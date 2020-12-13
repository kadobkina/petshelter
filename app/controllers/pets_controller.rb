class PetsController < ApplicationController

  before_action :authenticate_user!

  def new

  end

  def create
    pet = Pet.new pet_params
    if pet.save
      redirect_to pet_path(pet)
    else
      Rails.logger.debug pet.errors.full_messages.join("\n")
      render 'new'
    end
  end

  def show
    @pet = Pet.find_by_id(params[:id])
    not_found unless @pet.present?
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :kind, :age, :sex, :description, :shelter_id, :photo_url)
  end


end