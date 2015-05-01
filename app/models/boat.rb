class Boat < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  has_attached_file :image, :styles => { :large => "600x800", :medium => "300x400>", :thumb => "150x200>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
