class RestaurantsController < ApplicationController

  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" },
    3 => { name: "Hoxton 100", address: "Hoxton, London", category: "pan asian" }
  }


  def index
    if params[:category].blank?
      @restaurants = RESTAURANTS
    else
      @restaurants = RESTAURANTS.select do |id, restaurant|
        restaurant[:category] == params[:category]
      end
    end
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end

end
