class PetsController < ApplicationController

  before_action :authenticate_user!

  def new

  end

  def create
    pet = Pet.new pet_params
    if pet.save
      redirect_to pet_path(pet)
    else
      render 'new'
    end
  end

  def show
    @pet = Pet.find_by_id(params[:id])
    not_found unless @pet.present?
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :kind, :age, :sex, :description)
  end


end