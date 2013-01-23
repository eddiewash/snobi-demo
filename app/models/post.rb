class Post < ActiveRecord::Base
  attr_accessible :desc, :post_type, :user_id, :image, :remote_image_url, :video_url
  validates_presence_of :image, :post_type, :user_id

  belongs_to :user

  has_and_belongs_to_many :tags

  has_many :comments, :dependent => :destroy
  has_many :likes

  mount_uploader :image, ImageUploader

  def self.tagged_with(name)
  	Tag.find_by_name!(name).posts
  end

  def self.tag_counts
  	Tag.selet("tags.*, count(posts_tags.tag_id) as count").joins(:posts_tags).group("posts_tags.tag_id")
  end

  def tag_list
  	tags.map(&:name).join(" , ")
  end

  def tag_list=(names)
  	self.tags = names.split(" , ").map do |n|
  		Tag.where(name: n.strip).first_or_create!
  	end
  end

end
