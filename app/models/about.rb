class About
  include Mongoid::Document
  include Mongoid::Paranoia
  include Mongoid::I18n
  include Mongoid::Timestamps
  
  # Fields
  field :name
  key :name
  localized_field :about
  localized_field :apartments
end
