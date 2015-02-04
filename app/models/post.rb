class Post < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "400x400>", :thumb => "100x100>" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	def previous
  Post.where(["id < ?", id]).order(:id).last
	end

	def next
  Post.where(["id > ?", id]).order(:id).first
	end

	def last 
		Post.order(:id).last
	end

	def first
Post.order(:id).first
	end

	def to_param
		"#{id} #{title}".parameterize
	end
end
