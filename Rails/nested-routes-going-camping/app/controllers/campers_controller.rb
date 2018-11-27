class CampersController < ApplicationController

  def index
    if params[:campsite_id] == nil
      @title = "All Campers:"
      @campers = Camper.all
    else
      @campsite = Campsite.find(params[:campsite_id])
      @title = @campsite.name
      @campers = @campsite.campers
    end
  end
end
