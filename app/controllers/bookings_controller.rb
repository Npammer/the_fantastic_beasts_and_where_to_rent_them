class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    @bookings = Booking.all
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
      redirect_to beasts_path
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
    @booking.destroy
    redirect_to beasts_path
  end

  private

  def set_booking
    @booking = booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end
end
