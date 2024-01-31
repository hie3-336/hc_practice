group_before = %w[a b c d e f]
group_shuffle = group_before.shuffle
a = 2
p group_shuffle[0..a].sort
p group_shuffle[a+1..5].sort
