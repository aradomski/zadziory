class PlacesController < ApplicationController
  load_and_authorize_resource
 
  # GET /places
  # GET /places.xml
  def index
    #@places = Place.all
    #respond_with(@places)
	@search = Place.search(params[:search])
    @places = @search.page(params[:page]).per(4)
	#@places = @search.all
	#respond_with(@places)
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
	2.times do
      @place.images.build
	end
    respond_with(@place)
  end

  # GET /places/1/edit
  def edit
    @place = Place.find(params[:id])
    if @place.images.empty?
	2.times do
      @place.images.build
    end
    end
    respond_with(@place)
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
    params[:place][:images_attributes].each_key { |key|
     if params[:place][:images_attributes][key.to_sym][:remove_image] == "1"
       @image = Image.find(params[:place][:images_attributes][key.to_sym][:id])
       @image.remove_image!
       @image.destroy
       params[:place][:images_attributes].delete(key.to_sym)
     end
    }

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

  def myPlaces
	@search = Place.joins(:user).where("user_id == #{current_user.id}" ).search(params[:search])
	@places = @search.all
	render 'places/index'
  end

=begin
  def update_region_select
     @regions = regions_select(params[:country]) unless params[:country].blank?
    render :partial => "regions", :locals => { :regions => @regions }
  end
=end
end
