require_relative 'suica'
require_relative 'juice'

suica = Suica.new

p suica.charge(100)

p suica.check_charge_amount

p suica.charge(200)

p suica.check_charge_amount

juice = Juice.new(:pepsi)

p juice.check_stock
