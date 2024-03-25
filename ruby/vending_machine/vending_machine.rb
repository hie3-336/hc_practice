
class Vending_machine

  # @itemを外部から参照するメソッド
  # def item
  #   @item
  # end

  # @itemを外部から変更するメソッド
  def juice=(value)
    @juice = value
  end

  def check_stock(lineup)
    @juice.check_stock(lineup)
  end

  def purchase(lineup)
    @juice.purchase(lineup)
  end

  def check_sales
    @juice.check_sales
  end

  def check_lineup
    @juice.check_lineup
  end
  
end
