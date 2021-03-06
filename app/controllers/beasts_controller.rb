class BeastsController < ApplicationController
  before_action :set_beast, only: %i[show edit update destroy]

  def index
    if params[:query].present?
      @beasts_results = PgSearch.multisearch(params[:query])
    else
      @beasts = Beast.all
    end
  end

  def show
    @beast_geocoded = Beast.geocoded.find(params[:id])
    @marker = {
        lat: @beast_geocoded.latitude,
        lng: @beast_geocoded.longitude
      }
  end

  def new
    @beast = Beast.new
  end

  def create
    @beast = Beast.new(beast_params)
    @beast.user = current_user
    if @beast.save
      redirect_to beast_path(@beast)
    else
      render :new
    end
  end

  def edit; end

  def update
    @beast.update(beast_params)
    @beast.user = current_user
    if @beast.save
      redirect_to beast_path(@beast)
    else
      render :new
    end
  end

  def destroy
    @beast.destroy
    redirect_to beasts_path
  end

  private

  def set_beast
    @beast = Beast.find(params[:id])
  end

  def beast_params
    params.require(:beast).permit(:name, :category, :price, :location, :dangerousness, :photo)
  end
end
