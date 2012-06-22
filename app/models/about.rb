class About
  include Mongoid::Document
  include Mongoid::Timestamps
  
  # Fields
  field :name
  key :name
  field :about, localize: true
  field :apartments_top, localize: true
  field :apartments_bottom, localize: true
  
  # Indexes
  index "about.en"
  index "about.fr"
  index "about.pt"
  index "apartments_top.en"
  index "apartments_top.fr"
  index "apartments_top.pt"
  index "apartments_bottom.en"
  index "apartments_bottom.fr"
  index "apartments_bottom.pt"
end
