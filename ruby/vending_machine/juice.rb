# ジュースに関する動作を取り扱うクラス
class Juice
  def initialize(item:, price:, stock:)
    @item = item
    @price = price
    @stock = stock
  end

  # 在庫確認
  def check_stock
    @stock
  end

  # 値段確認
  def check_price
    @price
  end

  # 品物名確認
  def check_item
    @item
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
