# グループのメンバー一覧を配列に入力する
GROUP_BEFORE = %w[a b c d e f]

# グループを2つに分けるときに最初に分ける人数を配列に入力する
# (複数の数値を入力した場合ランダムで選ばれる)
SPLIT_NUM = [3, 4]

group_shuffle = GROUP_BEFORE.shuffle
split = SPLIT_NUM.sample

p group_shuffle[0..split - 1].sort
p group_shuffle[split..GROUP_BEFORE.length - 1].sort
