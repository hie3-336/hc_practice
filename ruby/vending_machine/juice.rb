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

  def replenish_stock(num)
    @stock += num
  end

  def purchase
    @stock -= 1
  end
end
