require_relative 'juice'
# 自販機に関する動作を扱うクラス
class VendingMachine
  def initialize
    @juices = [Juice.new(item: 'pepsi', price: 150, stock: 5),
               Juice.new(item: 'monster', price: 230, stock: 5),
               Juice.new(item: 'ilohas', price: 120, stock: 5)]
    @sales = 0
  end

  # 複数の品物のうち、該当の品物のインスタンスを検索する処理
  def find_item(item)
    @juices.find { |n| n.check_item == item }
  end

  # 品物のラインナップを返す処理(在庫が0の場合非表示)
  def check_itemlist
    @juices.map do |juice|
      juice.check_item if juice.check_stock.positive?
    end.compact
  end

  # @suicaを外部から変更するメソッド
  def suica=(value)
    @suica = value
  end

  # 在庫数を確認する処理
  def check_stock(item)
    find_item(item).check_stock
  end

  # 品物購入処理
  def purchase(item)
    price = find_item(item).check_price
    stock = find_item(item).check_stock

    charge_amount = @suica.check_charge_amount

    raise "You don't have enough money on your card." if charge_amount < price
    raise "I'm sorry, this item is sold out." if stock <= 0

    find_item(item).purchase
    @suica.spend(price)
    @sales += price
  end

  # 品物を補充する処理
  def replenish_stock(item, num)
    find_item(item).replenish_stock(num)
  end

  # 売上金額を確認する処理
  def check_sales
    sales
  end

  private

  # 売上金額を取得する処理(private)
  def sales
    @sales
  end
end
