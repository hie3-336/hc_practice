require_relative 'vending_machine'

require_relative 'suica'
require_relative 'juice'

suica = Suica.new
juice = Juice.new

vending_machine = Vending_machine.new(:pepsi)
vending_machine.item = juice

p suica.charge(100)

p suica.check_charge_amount

p suica.charge(200)

p suica.check_charge_amount

p vending_machine.check_stock