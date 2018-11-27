class SuppliesController < ApplicationController
  def index
    if params[:camper_id] == nil
      @title = "All Supplies:"
      @supplies = Supply.all
    else
      @camper = Camper.find(params[:camper_id])
      @title = "#{@camper.name}'s supplies:"
      @supplies = @camper.supplies
    end
  end
end
