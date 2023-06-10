class CarsController < ApplicationController
  before_action :set_car, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @cars = policy_scope(Car)
    @markers = @cars.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { car: car }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    authorize @car
    @booking = Booking.new
    @bookings = policy_scope(Booking)
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.starting_date,
        to: booking.ending_date
      }
    end
    @cars = policy_scope(Car).where(id: params[:id])
    @markers = @cars.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        info_window_html: render_to_string(partial: "info_window_car", locals: { car: }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def new
    @car = Car.new
    authorize @car
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    authorize @car
    if @car.save
      redirect_to car_path(@car)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @car
  end

  def update
    @car.update(car_params)
    redirect_to car_path(@car)
    authorize @car
  end

  def destroy
    @car.destroy
    authorize @car
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to cars_path, status: :see_other
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:name, :description, :location, :price, photos: [])
  end
end
