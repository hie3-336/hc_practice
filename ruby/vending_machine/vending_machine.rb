require_relative 'juice'
class Vending_machine

  # @itemを外部から参照するメソッド
  # def item
  #   @item
  # end
  def initialize
    @juices = [Juice.new(item: 'pepsi', price: 150, stock: 5),
              Juice.new(item: 'monster', price: 230, stock: 5),
              Juice.new(item: 'ilohas', price: 120, stock: 5)]
    @sales = 0
  end
  # juice = Juice.new
  # juice.suica = suica

  def find_item(i)
    @juices.find{|n| n.check_item == i}
  end

  def check_itemlist
    @juices.map do |juice|
      juice.check_item if juice.check_stock.positive?
    end.compact
    # @juices.map(&:check_item).join(' ')
  end


  # @suicaを外部から変更するメソッド
  def suica=(value)
    @suica = value
  end

  def check_stock(item)
    find_item(item).check_stock
  end

  def purchase(item)
    price = find_item(item).check_price

    # 二度手間かも
    stock = find_item(item).check_stock

    charge_amount = @suica.check_charge_amount

    raise "You don't have enough money on your card." if charge_amount < price
    raise "I'm sorry, this item is sold out." if stock <= 0

    find_item(item).purchase
    @suica.spend(price)
    @sales += price
  end

  def check_sales
    @sales
  end

  # def check_lineup
  #   @juice.check_lineup
  # end
  
end
