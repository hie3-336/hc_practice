class Pokemon 
  attr_reader :name, :type1, :type2, :hp

  def initialize
    @name = 'リザードン'
    @type1 = 'ほのお'
    @type2 = 'ひこう'
    @hp = 100
  end

  def attack
    p "#{@name}のこうげき！"
  end
end
