class Item < ActiveRecord::Base

	belongs_to :user
	validates_presence_of :address 
	geocoded_by :address 
	after_validation :geocode

	has_many :comments

	acts_as_votable


  has_attached_file :image, styles: { large: '600x600>', medium: "300x300>", thumb: "150x150#" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
