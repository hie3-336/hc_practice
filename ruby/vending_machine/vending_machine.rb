
class Vending_machine

  def initialize(lineup)
    @lineup = lineup
  end
  # @itemを外部から参照するメソッド
  # def item
  #   @item
  # end

  # @itemを外部から変更するメソッド
  def item=(value)
    @item = value
  end

  def check_stock
    @item.check_stock(@lineup)
  end

  def purchase
    @item.purchase(@lineup)
  end
end
