class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    @bookings = current_user.bookings
  end

  def show; end

  def new
    @booking = Booking.new
    @beast = Beast.find(params[:beast_id])
  end

  def create
    @beast = Beast.find(params[:beast_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.beast = @beast

    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @booking.update(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to beasts_path
    else
      render :new
    end
  end

  def destroy
    id = @booking.user_id
    @booking.destroy
    redirect_to user_path(id)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end
end
