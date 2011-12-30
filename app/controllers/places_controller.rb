class PlacesController < ApplicationController
  load_and_authorize_resource
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

      @place.images.build

    respond_with(@place)
  end

  # GET /places/1/edit
  def edit
    @place = Place.find(params[:id])
  end

  # POST /places
  # POST /places.xml
  def create
    #@place = Place.new(params[:place])
    #@place.save
    #respond_with(@place)
    # scope'owane 
	@place = current_user.places.build(params[:place])
	@place.save
	respond_with(@place)
  end

  # PUT /places/1
  # PUT /places/1.xml
  def update
    @place = Place.find(params[:id])

    if !@place.images.empty?
    for image in @place.images
      if params[:image_attributes][image.id.to_s][:remove_image] = 1
        image.remove_image!
        image.destroy
      end
    end
    end
    @place.update_attributes(params[:place])
    respond_with(@place)
  end

  # DELETE /places/1
  # DELETE /places/1.xml
  def destroy
    @place = Place.find(params[:id])
    for image in @place.images
        image.remove_image!
        image.destroy
    end
    @place.destroy
    respond_with(@place)
  end

=begin
  def update_region_select
     @regions = regions_select(params[:country]) unless params[:country].blank?
    render :partial => "regions", :locals => { :regions => @regions }
  end
=end
end
