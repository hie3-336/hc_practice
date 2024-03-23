class Juice
  ITEMS = [:pepsi]
  PRICE = [150]
  STOCK = [5]

  def initialize(item)
    @item = item
  end

  def check_stock
    item_no = ITEMS.index(@item)
    STOCK[item_no]
  end
end
