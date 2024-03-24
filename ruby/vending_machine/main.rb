require_relative 'vending_machine'

require_relative 'suica'
require_relative 'juice'

suica = Suica.new
juice = Juice.new

vending_machine = Vending_machine.new
vending_machine.item = juice

# ↓????
juice.suica = suica

p vending_machine.check_stock(:pepsi)

p vending_machine.purchase(:pepsi)
p vending_machine.purchase(:monster)
p vending_machine.purchase(:ilohas)

p suica.check_charge_amount
p vending_machine.check_sales
