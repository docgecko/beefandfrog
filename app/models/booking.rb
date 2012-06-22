class Booking  
  include Mongoid::Document
  include Mongoid::I18n
  include Mongoid::Timestamps
    
  # Fields
  field :start_at, :type => DateTime
  field :end_at, :type => DateTime
  field :name
  field :comments
  
  attr_accessible :start_at, :end_at, :name, :comments, :apartment_id
    
  # References
  belongs_to :apartment

  # Validations
  validates_presence_of :start_at, :end_at
  validates_date :start_at
  validates_date :end_at, :after => :start_at
end

