class PagesController < ApplicationController
  def home
  	@socials = Social.all
  	@bannerimages = Bannerimage.last
    @photos = Photo.last(12).reverse
    @posts = Post.last(3).reverse
  end
  
  def about 
  	@about_mes = AboutMe.all
  end 

  def blog
  	@posts = Post.all.order("created_at DESC")
  end
end
