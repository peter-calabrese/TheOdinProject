# frozen_string_literal: true

class Player
  attr_reader :shape
  attr_reader :name
  def initialize(name, shape)
    @name = name
    @shape = shape
  end


end
