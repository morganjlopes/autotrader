class Category < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
  
  belongs_to :make 
  validates_presence_of :name, :make 
  validates_uniqueness_of :name
  has_many :vehicles
end
