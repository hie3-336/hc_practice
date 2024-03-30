require_relative 'vending_machine'
require_relative 'suica'

suica = Suica.new

vending_machine = Vending_machine.new

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
