require_relative 'vending_machine'

suica = Suica.new

p suica.charge(100)

p suica.check_charge_amount

p suica.charge(200)

p suica.check_charge_amount
