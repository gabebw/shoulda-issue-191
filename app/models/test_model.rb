class TestModel
  include ActiveModel::Validations
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Serialization
  include ActiveModel::Serializers::Xml
  include ActiveModel::AttributeMethods

  validates_presence_of :first_name
  validates :zip, :numericality => true

  def persisted?
    false
  end

  def initialize(attributes = {})
    @attributes = attributes
    Rails.logger.info self.inspect
  end

  #TODO in activerecord this is not needed, does new automatically generate nil for each field?
  attr_accessor :attributes, :first_name, :zip

  def save
    if valid?
      #save method implementation
      true
    else
      false
    end
  end
end
