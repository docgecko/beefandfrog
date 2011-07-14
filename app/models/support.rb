class Support
  include Mongoid::Document

  attr_accessor :id, :email, :name, :type, :content
  
  validates_presence_of :email, :name, :content
  validates_format_of :email, with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  
  def initialize(attributes = {})
    attributes.each do |key, value|
      self.send("#{key}=", value)
    end
    @attributes = attributes
  end

  def read_attribute_for_validation(key)
    @attributes[key]
  end

  def to_key
  end

  def save
    if self.valid?
      Notifier.support_notification(self).deliver
      return true
    end
    return false
  end
end
