require_relative 'vending_machine'

require_relative 'suica'
require_relative 'juice'

suica = Suica.new
juice = Juice.new

vending_machine = Vending_machine.new(:pepsi)
vending_machine.item = juice

# ↓????
juice.suica = suica

p vending_machine.check_stock

p vending_machine.purchase
p vending_machine.purchase
p vending_machine.purchase

p suica.check_charge_amount