class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @beasts = Beast.geocoded.all
    @markers = @beasts.map do |marker|
      {
        lat: marker.latitude,
        lng: marker.longitude
      }
    end
  end
end
