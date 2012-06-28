class Conversion
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :url, :format

  validates :url, presence: true
  validates :format, presence: true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

  def self.formats
    [
      ['Google Calendar', :gcal],
      ['iCal/Yahoo Calendar', :ical],
      ['CSV file', :csv]
    ]
  end
end
