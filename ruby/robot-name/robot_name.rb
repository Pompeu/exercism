module BookKeeping
  VERSION = 2
end

class Robot

  attr_reader :name

  def initialize
    @name = @@names.pop
  end

  def self.forget
    @@names = ('AA000'..'ZZ999').to_a
  end

  def reset
    @name = @@names.pop
  end
end
