#全改修中
class Juice

  def initialize(item:, price:, stock:)
    @item = item
    @price = price
    @stock = stock
  end

  def check_stock
    @stock
  end

  def check_price
    @price
  end

  def check_item
    @item
  end

  # @suicaを外部から変更するメソッド
  # def suica=(value)
  #   @suica = value
  # end
  

  def purchase
    # item_no = ITEMS.index(item)
    # charge_amount = @suica.check_charge_amount

    # raise "You don't have enough money on your card." if charge_amount < PRICE[item_no]
    # raise "I'm sorry, this item is sold out." if @stock[item_no] <= 0

    @stock -= 1
    # @sales += PRICE[item_no]
    # @suica.spend(PRICE[item_no])
  end

  # def check_sales
  #   @sales
  # end

  # def check_lineup
  #   ITEMS
  # end
end
