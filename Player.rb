# This class will be used to create new players
class Player

  attr_reader :name, :lives
  # attr_writer :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def is_alive?
    @lives >= 1
  end

end