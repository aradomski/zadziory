class HistoriesController < ApplicationController
  # GET /histories
  # GET /histories.xml
  def index
    @histories = History.all
    respond_with(@histories)
  end

  # GET /histories/1
  # GET /histories/1.xml
  def show
    @history = History.find(params[:id])
    respond_with(@history)
  end

  # GET /histories/new
  # GET /histories/new.xml
  def new
    @history = History.new
    respond_with(@history)
  end

  # GET /histories/1/edit
  def edit
    @history = History.find(params[:id])
  end

  # POST /histories
  # POST /histories.xml
  def create
    @history = History.new(params[:history])
    @history.save
    respond_with(@history)
  end

  # PUT /histories/1
  # PUT /histories/1.xml
  def update
    @history = History.find(params[:id])
    @history.update_attributes(params[:history])
    respond_with(@history)
  end

  # DELETE /histories/1
  # DELETE /histories/1.xml
  def destroy
    @history = History.find(params[:id])
    @history.destroy
    respond_with(@history)
  end
end
