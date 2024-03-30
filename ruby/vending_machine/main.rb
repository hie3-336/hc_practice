require_relative 'vending_machine'
require_relative 'suica'
require_relative 'juice'

suica = Suica.new
# juice_pepsi = Juice.new(product: 'pepsi', price: 150, stock: 5)
# juice_monster = Juice.new(product: 'monster', price: 230, stock: 5)
# juice_ilohas = Juice.new(product: 'ilohas', price: 120, stock: 5)
# juice = Juice.new

vending_machine = Vending_machine.new

#vending_machine.juice = juice

vending_machine.suica = suica

suica.charge(3000)

p vending_machine.check_stock('pepsi')

p vending_machine.purchase('pepsi')
5.times do
  p vending_machine.purchase('ilohas')
end

p vending_machine.purchase('monster')

p suica.check_charge_amount
p vending_machine.check_sales
p vending_machine.check_stock('pepsi')
p vending_machine.check_stock('ilohas')
p vending_machine.check_itemlist
p vending_machine.replenish_stock('ilohas',1)
p vending_machine.check_itemlist
