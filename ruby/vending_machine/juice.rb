# ジュースに関する動作を取り扱うクラス
class Juice
  attr_reader :price, :item

  def initialize(item:, price:)
    @item = item
    @price = price
  end
end
