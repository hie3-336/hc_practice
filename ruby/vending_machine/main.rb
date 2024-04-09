# 自販機の購入デモを行うメイン処理
require_relative 'vending_machine'
require_relative 'suica'

suica = Suica.new
vending_machine = VendingMachine.new
vending_machine.suica = suica

p '自販機の購入デモ開始'
p 'スイカに1100円チャージする'
suica.charge(1100)

# p 'スイカに100円未満をチャージした場合は例外が発生する'
# suica.charge(99)

p 'ペプシの現在の在庫数確認'
p vending_machine.check_stock('pepsi')

p 'いろはすの現在の在庫数確認'
p vending_machine.check_stock('ilohas')

p 'モンスターの現在の在庫数確認'
p vending_machine.check_stock('monster')

p 'ペプシを1つ購入する'
p vending_machine.purchase('pepsi')

p 'いろはすを5つ購入する'
5.times do
  p vending_machine.purchase('ilohas')
end

p 'モンスターを3つ購入する'
3.times do
  p vending_machine.purchase('monster')
end

p 'スイカの現在のチャージ金額を確認する'
p suica.check_charge_amount

p '現在の売上確認'
p vending_machine.check_sales

p 'ペプシの現在の在庫数確認'
p vending_machine.check_stock('pepsi')

p 'いろはすの現在の在庫数確認'
p vending_machine.check_stock('ilohas')

p 'モンスターの現在の在庫数確認'
p vending_machine.check_stock('monster')

p '現在の在庫リスト確認 (いろはすは売り切れ)'
p vending_machine.check_itemlist

# p 'この状態でいろはすを購入すると在庫切れ例外が発生する'
# p vending_machine.purchase('ilohas')

p 'いろはすの在庫を5つ補充'
p vending_machine.replenish_stock('ilohas', 5)

p '現在の在庫リスト確認'
p vending_machine.check_itemlist

p 'いろはすの現在の在庫数確認'
p vending_machine.check_stock('ilohas')

# p 'この状態でモンスターを購入するとチャージ金額が足りないので例外が発生する'
# p vending_machine.purchase('monster')
