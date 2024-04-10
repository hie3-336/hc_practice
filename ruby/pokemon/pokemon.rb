# ポケモンの基本機能を扱うモジュール
module Pokemon 
  attr_reader :name, :type1, :type2, :hp
  private :name

  def initialize(name:, type1:, type2:, hp:)
    @name = name
    @type1 = type1
    @type2 = type2
    @hp = hp
  end

  def attack
    p "#{@name}のこうげき！"
  end

  def change_name(new_name)
    raise '不適切な名前です' if new_name == 'うんこ'

    @name = new_name
  end

  def find_name
    @name
  end
end

# ピカチュウ固有の機能を扱うクラス
class Pikachu
  include Pokemon

  def attack
    super
    p "#{@name}の10万ボルト！"
  end
end