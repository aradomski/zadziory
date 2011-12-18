class PreferencesController < ApplicationController
  # GET /preferences
  # GET /preferences.xml
  def index
    @preferences = Preference.all
    respond_with(@preferences)
  end

  # GET /preferences/1
  # GET /preferences/1.xml
  def show
    @preference = Preference.find(params[:id])
    respond_with(@preference)
  end

  # GET /preferences/new
  # GET /preferences/new.xml
  def new
    @preference = Preference.new
    respond_with(@preference)
  end

  # GET /preferences/1/edit
  def edit
    @preference = Preference.find(params[:id])
  end

  # POST /preferences
  # POST /preferences.xml
  def create
    @preference = Preference.new(params[:preference])
    @preference.save
    respond_with(@preference)
  end

  # PUT /preferences/1
  # PUT /preferences/1.xml
  def update
    @preference = Preference.find(params[:id])
    @preference.update_attributes(params[:preference])
    respond_with(@preference)
  end

  # DELETE /preferences/1
  # DELETE /preferences/1.xml
  def destroy
    @preference = Preference.find(params[:id])
    @preference.destroy
    respond_with(@preference)
  end
end
