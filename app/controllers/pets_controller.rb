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
    @pet.user = current_user
    if @pet.save
      flash[:success] = "Object successfully created"
      redirect_to @pet
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  # PATCH/PUT /pets/1
  def update
    if @pet.update(pet_params)
      redirect_to @pet, notice: 'pet was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pets/1
   def destroy
     @pet.destroy
     redirect_to pets_url, notice: 'pet was successfully destroyed.'
   end
  
  private

  def set_pet
    @pet = Pet.find(params[:id])
  end  

  def pet_params
    params.require(:pet).permit(:name, :specie, :size, :description, :user)
  end  
end
