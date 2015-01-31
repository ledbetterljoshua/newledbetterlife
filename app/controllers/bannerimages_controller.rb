class BannerimagesController < ApplicationController
  before_action :set_bannerimage, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @bannerimages = Bannerimage.all.order("created_at DESC")
  end

  def show
  end

  def new
    @bannerimage = current_user.bannerimages.build
  end

  def edit
  end

  def create
    @bannerimage = current_user.bannerimages.build(bannerimage_params)
    if @bannerimage.save
      redirect_to @bannerimage, notice: 'bannerimage was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @bannerimage.update(bannerimage_params)
      redirect_to @bannerimage, notice: 'bannerimage was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @bannerimage.destroy
    redirect_to bannerimages_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bannerimage
      @bannerimage = Bannerimage.find(params[:id])
    end

    def correct_user
      @bannerimage = current_user.bannerimages.find_by(id: params[:id])
      redirect_to bannerimages_path, notice: "Not authorized to edit this bannerimage" if @bannerimage.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bannerimage_params
      params.require(:bannerimage).permit(:image)
    end
end