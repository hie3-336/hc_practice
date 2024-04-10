require_relative 'pokemon'

pika = Pikachu.new(name: 'ピカチュウ', type1: 'でんき', type2: '', hp: 100)

# 名前表示
p pika.find_name

# タイプ表示
p pika.type1

# ピカチュウの攻撃
pika.attack

# 名前変更
pika.change_name('たろう')
p pika.find_name

# 以下は「不適切な名前」の例外発生
# pika.change_name('うんこ')
