# frozen_string_literal: true

class Player
  attr_reader :name
  attr_reader :shape
  def initialize(name, shape)
    @name = name
    @shape = shape
  end

end
