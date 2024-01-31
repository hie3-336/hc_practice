GROUP_BEFORE = %w[a b c d e f]
SPLIT_NUM = [3, 4]

group_shuffle = GROUP_BEFORE.shuffle
split = SPLIT_NUM.sample

p group_shuffle[0..split - 1].sort
p group_shuffle[split..GROUP_BEFORE.length - 1].sort
