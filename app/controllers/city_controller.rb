class CityController < ApplicationController
  def show
    @city = City.find(params[:id])
    @city.users.each do |u|
      @goss = u.gossips
    end
    # @goss.each do |g|
    #   @user_city_gossips = g.content
    # end
  end
end
