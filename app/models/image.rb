class Image
  include Mongoid::Document
  include Mongoid::Paranoia
  include Mongoid::I18n
  include Mongoid::Timestamps
  
  # Fields
  field :logo
  localized_field :description
  
  # References
  embedded_in :apartment
end
