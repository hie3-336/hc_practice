# ジュースに関する動作を取り扱うクラス
class Juice

  attr_reader :check_stock, :check_price, :check_item

  def initialize(item:, price:, stock:)
    @item = item
    @price = price
    @stock = stock
  end

  # 在庫補充
  def replenish_stock(num)
    @stock += num
  end

  # 購入による在庫-1処理
  def purchase
    @stock -= 1
  end
end
