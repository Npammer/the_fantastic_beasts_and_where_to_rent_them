class AbilitiesController < ApplicationController
  def new
    @ability = Ability.new
    @beast = Beast.find(params[:beast_id])
  end

  def create
    @beast = Beast.find(params[:beast_id])
    @ability = Ability.new(ability_params)
    @ability.beast = @beast

    if @ability.save
      redirect_to beast_path(@beast)
    else
      render :new
    end
  end

  private
  def ability_params
    params.require(:ability).permit(:description)
  end
end
