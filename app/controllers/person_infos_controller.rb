class PersonInfosController < ApplicationController
  # GET /person_infos
  # GET /person_infos.xml
  def index
    @person_infos = PersonInfo.all
    respond_with(@person_infos)
  end

  # GET /person_infos/1
  # GET /person_infos/1.xml
  def show
    @person_info = PersonInfo.find(params[:id])
    respond_with(@person_info)
  end

  # GET /person_infos/new
  # GET /person_infos/new.xml
  def new
    @person_info = PersonInfo.new
    respond_with(@person_info)
  end

  # GET /person_infos/1/edit
  def edit
    @person_info = PersonInfo.find(params[:id])
  end

  # POST /person_infos
  # POST /person_infos.xml
  def create
    @person_info = PersonInfo.new(params[:person_info])
    @person_info.save
    respond_with(@person_info)
  end

  # PUT /person_infos/1
  # PUT /person_infos/1.xml
  def update
    @person_info = PersonInfo.find(params[:id])
    @person_info.update_attributes(params[:person_info])
    respond_with(@person_info)
  end

  # DELETE /person_infos/1
  # DELETE /person_infos/1.xml
  def destroy
    @person_info = PersonInfo.find(params[:id])
    @person_info.destroy
    respond_with(@person_info)
  end
end
