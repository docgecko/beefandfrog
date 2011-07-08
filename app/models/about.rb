class About
  include Mongoid::Document
  include Mongoid::Paranoia
  include Mongoid::I18n
  include Mongoid::Timestamps
  
  # Fields
  localized_field :title_about
  localized_field :content_about
  localized_field :title_prices
  localized_field :content_prices
  localized_field :title_apartments
  localized_field :content_apartments
end
