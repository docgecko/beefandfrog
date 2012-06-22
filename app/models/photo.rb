class Photo
  include Mongoid::Document
  include Mongoid::Timestamps

  # Fields
  field :description, localize: true
  field :image
  field :order_no, :type => Integer
  field :featured, :type => Boolean, :default => false
  field :apartment_id

  attr_accessible :description, :image, :remove_image, :order_no, :featured, :apartment_id

  # References
  belongs_to :apartment

  # Carrierwave
  mount_uploader :image, PhotoUploader
end
