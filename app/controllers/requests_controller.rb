class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def new
    @request = request.new
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @request = Request.new(request_params)
    @request.user = current_user
    @request.pet = @pet
    if @request.save
      redirect_to pet_path(@pet)
    else
      render 'pets/show'
    end
  end

  def update
    @request = Request.find(params[:id])
    @request.update(request_params)
    redirect_to requests_path
  end

  private

  def request_params
    params.require(:request).permit(:status, :pet_id, :user_id)
  end
end
