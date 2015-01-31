class SocialsController < ApplicationController
  before_action :set_social, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  respond_to :html

  def index
    @socials = Social.all
    respond_with(@socials)
  end

  def show
    respond_with(@social)
  end

  def new
    @social = Social.new
    respond_with(@social)
  end

  def edit
  end

  def create
    @social = Social.new(social_params)
    @social.save
    respond_with(@social)
  end

  def update
    @social.update(social_params)
    respond_with(@social)
  end

  def destroy
    @social.destroy
    respond_with(@social)
  end

  private
    def set_social
      @social = Social.find(params[:id])
    end

    def social_params
      params.require(:social).permit(:facebook, :twitter, :instagram)
    end
end
