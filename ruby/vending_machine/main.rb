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

p vending_machine.check_stock

p vending_machine.purchase
p vending_machine.purchase
p vending_machine.purchase

p suica.check_charge_amount
p vending_machine.check_sales
p vending_machine.check_stock
