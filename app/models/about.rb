class About
  include Mongoid::Document
  include Mongoid::I18n
  include Mongoid::Timestamps
  
  # Fields
  field :name
  key :name
  localized_field :about
  localized_field :apartments_top
  localized_field :apartments_bottom
  localized_field :contact
end
