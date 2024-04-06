module Pokemon 
  attr_reader :name, :type1, :type2, :hp

  def initialize(name:, type1:, type2:, hp:)
    @name = name
    @type1 = type1
    @type2 = type2
    @hp = hp
  end

  def attack
    p "#{@name}のこうげき！"
  end
end

class Pikachu
  include Pokemon

  def attack
    super
    p "#{@name}の10万ボルト！"
  end
end