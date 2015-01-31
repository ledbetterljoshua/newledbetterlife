class ProfileImagesController < ApplicationController
  before_action :set_profile_image, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  respond_to :html

  def index
    @profile_images = ProfileImage.all
    respond_with(@profile_images)
  end

  def show
    respond_with(@profile_image)
  end

  def new
    @profile_image = ProfileImage.new
    respond_with(@profile_image)
  end

  def edit
  end

  def create
    @profile_image = ProfileImage.new(profile_image_params)
    @profile_image.save
    respond_with(@profile_image)
  end

  def update
    @profile_image.update(profile_image_params)
    respond_with(@profile_image)
  end

  def destroy
    @profile_image.destroy
    respond_with(@profile_image)
  end

  private
    def set_profile_image
      @profile_image = ProfileImage.find(params[:id])
    end

    def profile_image_params
      params.require(:profile_image).permit(:title, :image)
    end
end
