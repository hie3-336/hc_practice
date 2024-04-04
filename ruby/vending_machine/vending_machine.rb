require_relative 'juice'
# 自販機に関する動作を扱うクラス
class VendingMachine
  JUICES = [
    {set_item: 'pepsi', set_price: 150, set_stock: 5},
    {set_item: 'monster', set_price: 230, set_stock: 5},
    {set_item: 'ilohas', set_price: 120, set_stock: 5}
  ]
  def initialize
    @stock = []

    JUICES.each do |n|
      n[:set_stock].times do
        @stock << Juice.new(item: n[:set_item], price: n[:set_price])
      end
    end

    @sales = 0
    p @stock
    p @stock[1].check_item
  end

  # 複数の品物のうち、該当の品物のインスタンスを検索する処理
  def find_item(item)
    @juices.find { |n| n.check_item == item }
  end

  # stockを品物一覧として変換する処理
  def itemlist
    @stock.map do |juice|
      juice.check_item
    end
  
  end

  # 品物のラインナップを返す処理(在庫が0の場合非表示)
  def check_itemlist
    itemlist.uniq
  end

  # @suicaを外部から変更するメソッド
  def suica=(value)
    @suica = value
  end

  # 在庫数を確認する処理
  def check_stock(item)
    itemlist.count(item)
  end

  # 品物購入処理
  def purchase(item)

    item_no = itemlist.find_index(item)

    raise "I'm sorry, this item is sold out." if item_no.nil?

    price = @stock[item_no].check_price
    charge_amount = @suica.check_charge_amount

    raise "You don't have enough money on your card." if charge_amount < price

    @stock.delete(item_no)
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
