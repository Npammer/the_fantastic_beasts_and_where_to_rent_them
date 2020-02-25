class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    @bookings = booking.all
  end

  def show; end

  def new
    @booking = booking.new
  end

  def create
    @booking = booking.new(booking_params)
    @booking.user = current_user
    raise
    @booking.beast =
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit; end

  def update
    @booking.update(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to root_path
  end

  private

  def set_booking
    @booking = booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end
end

end
