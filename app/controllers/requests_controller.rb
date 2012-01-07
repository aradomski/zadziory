class RequestsController < ApplicationController
  # GET /preferences
  # GET /preferences.xml
  def index
    @requests = Request.all
    respond_with(@requests)
  end

  # GET /preferences/1
  # GET /preferences/1.xml
  def show
    @request = Request.find(params[:id])
    respond_with(@request)
  end

  # GET /preferences/new
  # GET /preferences/new.xml
  def new
    @request = Request.new
    respond_with(@request)
  end

  # GET /preferences/1/edit
  def edit
    @request = Request.find(params[:id])
  end

  # POST /preferences
  # POST /preferences.xml
  def create
    @request = Request.new(params[:request])
    @request.save
    respond_with(@request)
  end

  # PUT /preferences/1
  # PUT /preferences/1.xml
  def update
    @request = Request.find(params[:id])
    @request.update_attributes(params[:request])
    respond_with(@request)
  end

  # DELETE /preferences/1
  # DELETE /preferences/1.xml
  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    respond_with(@request)
  end
end