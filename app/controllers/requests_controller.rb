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
    @request.user_id = current_user.id
    @request.owner_id = User.find(Place.find(params[:request][:place_id]).user_id).id
    @request.status = 1
    @request.save
    respond_with(@request)
  end

  # PUT /preferences/1
  # PUT /preferences/1.xml
  def update
    @request = Request.find(params[:id])
    @request.update_attributes(params[:request])
    #respond_with(@request)
    case params[:request][:status]
      when "0"
         redirect_to  rejected_owner_requests_path and return
       when "1"
         redirect_to  pending_owner_requests_path and return
       when "2"
         redirect_to  accepted_owner_requests_path and return
       when "3"
         redirect_to  rented_owner_requests_path and return
    end
  end

  # DELETE /preferences/1
  # DELETE /preferences/1.xml
  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    respond_with(@request)
  end

  # actions for TENANT
  def allTenantRequests
    @requests = Request.find_all_by_user_id(current_user.id)
	  render 'requests/index'
  end
  def pendingTenantRequests
    @requests = Request.find(:all, :conditions => { :status => 1, :user_id => current_user.id })
	  render 'requests/index'
  end
  def acceptedTenantRequests
    @requests = Request.find(:all, :conditions => { :status => 2, :user_id => current_user.id })
	  render 'requests/index'
  end
  def rentedTenantRequests
    @requests = Request.find(:all, :conditions => { :status => 3, :user_id => current_user.id })
	  render 'requests/index'
  end
  def rejectedTenantRequests
    @requests = Request.find(:all, :conditions => { :status => 0, :user_id => current_user.id })
	  render 'requests/index'
  end


  #actions for OWNER
   def allOwnerRequests
    @requests = Request.find_all_by_owner_id(current_user.id)
	  render 'requests/index'
   end
   def pendingOwnerRequests
    @requests = Request.find(:all, :conditions => { :status => 1, :owner_id => current_user.id })
	  render 'requests/index'
  end
  def acceptedOwnerRequests
    @requests = Request.find(:all, :conditions => { :status => 2, :owner_id => current_user.id })
	  render 'requests/index'
  end
  def rentedOwnerRequests
    @requests = Request.find(:all, :conditions => { :status => 3, :owner_id => current_user.id })
	  render 'requests/index'
  end
  def rejectedOwnerRequests
    @requests = Request.find(:all, :conditions => { :status => 0, :owner_id => current_user.id })
	  render 'requests/index'
  end

end
