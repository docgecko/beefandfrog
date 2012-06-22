class Apartment
  include Mongoid::Document
  include Mongoid::Timestamps
    
  # fields
  field :name, localize: true
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
  field :floor, localize: true
  field :description_short, localize: true
  field :description_long, localize: true
  field :address
  field :longitude, :type => Float
  field :latitude, :type => Float
  field :gmaps, :type => Boolean
  field :order_no, :type => Integer
  
  # References
  has_many :photos
  has_many :bookings
  
  # Validations
  validates_presence_of :key_name
  validates_uniqueness_of :key_name
end
