# frozen_string_literal: true

class User
  attr_reader :name, :location

  class << self
    def attribute_names
      %i[name location]
    end
  end

  def initialize(name, location)
    @name = name
    @location = location
  end

  def attributes
    {name: name, location: location}
  end

  def attribute_names
    attributes.keys
  end
end
