class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
    authorize @pet
    @pets = Pet.geocoded # returns pets with coordinates

    @markers = @pets.map do |pet|
      {
        lat: pet.latitude,
        lng: pet.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { pet: pet }),
        image_url: helpers.asset_url('map_pin.png')
      }
    end
  end

  def new
    @pet = Pet.new
    authorize @pet
  end

  def edit
    authorize @pet
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    authorize @pet
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
    authorize @pet
    if @pet.update(pet_params)
      redirect_to @pet, notice: 'pet was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pets/1
  def destroy
    authorize @pet
    @pet.destroy
    redirect_to pets_url, notice: 'pet was successfully destroyed.'
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :photo, :specie, :size, :description, :user)
  end
end
