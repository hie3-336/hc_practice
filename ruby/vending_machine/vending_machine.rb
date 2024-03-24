
class Vending_machine

  # @itemを外部から参照するメソッド
  # def item
  #   @item
  # end

  # @itemを外部から変更するメソッド
  def item=(value)
    @item = value
  end

  def check_stock(lineup)
    @item.check_stock(lineup)
  end

  def purchase(lineup)
    @item.purchase(lineup)
  end

  def check_sales
    @item.check_sales
  end
  
end
