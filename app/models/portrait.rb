class Portrait
  include Mongoid::Document
  include Mongoid::I18n
  include Mongoid::Timestamps

  # Fields
  localized_field :description
  field :image
  field :order_no, :type => Integer
  field :featured, :type => Boolean, :default => false

  attr_accessible :description, :image, :remove_image, :order_no, :featured, :image_cache
  
  # Carrierwave
  mount_uploader :image, PortraitUploader
end
