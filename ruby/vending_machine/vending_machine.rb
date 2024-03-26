require_relative 'juice'
class Vending_machine

  # @itemを外部から参照するメソッド
  # def item
  #   @item
  # end
  def initialize
    @juice = Juice.new(item: 'pepsi', price: 150, stock: 5)
    @sales = 0
  end
  # juice = Juice.new
  # juice.suica = suica

  # @itemを外部から変更するメソッド
  def suica=(value)
    @suica = value
  end

  def check_stock
    @juice.check_stock
  end

  def purchase
    price = @juice.check_price

    # 二度手間かも
    stock = @juice.check_stock

    charge_amount = @suica.check_charge_amount

    raise "You don't have enough money on your card." if charge_amount < price
    raise "I'm sorry, this item is sold out." if stock <= 0

    @juice.purchase
    @sales += price
  end

  def check_sales
    @sales
  end

  # def check_lineup
  #   @juice.check_lineup
  # end
  
end
