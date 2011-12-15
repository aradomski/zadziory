class PlacesController < ApplicationController
  # GET /places
  # GET /places.xml
  def index
    @places = Place.all
    respond_with(@places)
  end

  # GET /places/1
  # GET /places/1.xml
  def show
    @place = Place.find(params[:id])
    respond_with(@place)
  end

  # GET /places/new
  # GET /places/new.xml
  def new
    @place = Place.new
    respond_with(@place)
  end

  # GET /places/1/edit
  def edit
    @place = Place.find(params[:id])
  end

  # POST /places
  # POST /places.xml
  def create
    @place = Place.new(params[:place])
    @place.save
    respond_with(@place)
  end

  # PUT /places/1
  # PUT /places/1.xml
  def update
    @place = Place.find(params[:id])
    @place.update_attributes(params[:place])
    respond_with(@place)
  end

  # DELETE /places/1
  # DELETE /places/1.xml
  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    respond_with(@place)
  end
end
