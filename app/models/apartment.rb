class Apartment
  include Mongoid::Document
  include Mongoid::I18n
  include Mongoid::Timestamps
    
  # fields
  localized_field :name
  field :key_name
  key :key_name
  field :price, :type => Float
  field :sleeps, :type => Integer
  field :bedrooms, :type => Integer
  field :studio, :type => Boolean
  field :bathrooms,:type => Integer
  field :size, :type => Integer
  field :kitchen, :type => Boolean, :default => true
  field :sitting_room, :type => Boolean, :default => true
  localized_field :floor
  localized_field :description_short
  localized_field :description_long
  field :address
  field :longitude, :type => Float
  field :latitude, :type => Float
  field :gmaps, :type => Boolean
  
  # References
  has_many :photos
  has_many :bookings
  
  # Validations
  validates_presence_of :key_name
  validates_uniqueness_of :key_name
end
