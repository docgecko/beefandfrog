class Photo
  include Mongoid::Document
  include Mongoid::I18n
  include Mongoid::Timestamps

  # Fields
  localized_field :description
  field :image
  field :order_no, :type => Integer

  # References
  belongs_to :apartment

  # Carrierwave
  mount_uploader :image, PhotoUploader
  
  attr_accessible :description, :image, :remove_image, :order_no
end
