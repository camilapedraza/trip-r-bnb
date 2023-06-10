class BookingsController < ApplicationController
  before_action :set_car, except: %i[index edit update destroy]

  def index
    @bookings = policy_scope(Booking)
    @owner_bookings = []
    @renter_bookings = []
    @bookings.each do |booking|
      booking.user == current_user ? @renter_bookings << booking : @owner_bookings << booking
    end
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    @booking.car = @car
    if @booking.save
      redirect_to car_booking_path(@car, @booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path
    authorize @booking
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    authorize @booking
    redirect_to bookings_path, status: :see_other
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
