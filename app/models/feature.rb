class Feature < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  has_many :vehicle_features
  has_many :vehicles, through: :vehicle_features

  validates_uniqueness_of :name
end
