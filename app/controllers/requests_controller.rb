class RequestsController < ApplicationController
  def index
    @requests = policy_scope(Request).where(user: current_user)
    @user_pets_requests = policy_scope(Request).where(pet_id: Pet.where(user: current_user).ids)
  end

  def create
    @request = Request.new
    @request.user = current_user
    @request.pet = Pet.find(params[:pet_id])
    authorize @request
    if @request.save
      redirect_to pet_path(@request.pet)
    else
      render 'pets/show'
    end
  end

  def update
    @request = Request.find(params[:id])
    authorize @request
    @request.update(status: !@request.status)
    redirect_to requests_path
  end

end
