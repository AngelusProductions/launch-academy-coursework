class CampsitesController < ApplicationController
  def index
    @title = "All Campsites:"
    @campsites = Campsite.all
  end

  def show
    @campers = Camper.where(campsite_id: params[:id])
    @title = Campsite.find(params[:id]).name
  end
end
