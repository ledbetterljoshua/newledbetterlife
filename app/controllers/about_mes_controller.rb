class AboutMesController < ApplicationController
  before_action :set_about_me, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @about_mes = AboutMe.all
    respond_with(@about_mes)
  end

  def show
    respond_with(@about_me)
  end

  def new
    @about_me = AboutMe.new
    respond_with(@about_me)
  end

  def edit
  end

  def create
    @about_me = AboutMe.new(about_me_params)
    @about_me.save
    respond_with(@about_me)
  end

  def update
    @about_me.update(about_me_params)
    respond_with(@about_me)
  end

  def destroy
    @about_me.destroy
    respond_with(@about_me)
  end

  private
    def set_about_me
      @about_me = AboutMe.find(params[:id])
    end

    def about_me_params
      params.require(:about_me).permit(:description, :title)
    end
end
