class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end
  
  def edit
  end  

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      flash[:success] = "Object successfully created"
      redirect_to @pet
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  
  private

  def set_pet
    @pet = Pet.find(params[:id])
  end  

  def pet_params
    params.require().permit(:name, :specie, :size, :description)
  end  
end
