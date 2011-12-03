class PartnersController < ApplicationController
  # GET /partners
  # GET /partners.xml
  def index
    @partners = Partner.all
    respond_with(@partners)
  end

  # GET /partners/1
  # GET /partners/1.xml
  def show
    @partner = Partner.find(params[:id])
    respond_with(@partner)
  end

  # GET /partners/new
  # GET /partners/new.xml
  def new
    @partner = Partner.new
    respond_with(@partner)
  end

  # GET /partners/1/edit
  def edit
    @partner = Partner.find(params[:id])
  end

  # POST /partners
  # POST /partners.xml
  def create
    @partner = Partner.new(params[:partner])
    flash[:notice] = 'Partner was successfully created.' if @partner.save
    respond_with(@partner)
  end

  # PUT /partners/1
  # PUT /partners/1.xml
  def update
    @partner = Partner.find(params[:id])
    flash[:notice] = 'Partner was successfully updated.' if @partner.update_attributes(params[:partner])
    respond_with(@partner)
  end

  # DELETE /partners/1
  # DELETE /partners/1.xml
  def destroy
    @partner = Partner.find(params[:id])
    @partner.destroy
    respond_with(@partner)
  end
end
