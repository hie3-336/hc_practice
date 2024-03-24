require_relative 'suica'

class Juice
  ITEMS = [:pepsi, :monster, :ilohas]
  PRICE = [150, 230, 120]
  STOCK = [5, 5, 5]
  SALES = 0

  def initialize
    @stock = STOCK
    @sales = SALES
  end

  def check_stock(item)
    item_no = ITEMS.index(item)
    STOCK[item_no]
  end

  # @itemを外部から変更するメソッド
  def suica=(value)
    @suica = value
  end
  

  def purchase(item)
    item_no = ITEMS.index(item)
    charge_amount = @suica.check_charge_amount

    raise "You don't have enough money on your card." if charge_amount < PRICE[item_no]
    raise "I'm sorry, this item is sold out." if @stock[item_no] <= 0

    @stock[item_no] -= 1
    @sales += PRICE[item_no]
    @suica.spend(PRICE[item_no])
  end

  def check_sales
    @sales
  end
end
