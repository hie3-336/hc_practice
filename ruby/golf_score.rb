r_scores = gets.split(',').map(&:to_i)
p_scores = gets.split(',').map(&:to_i)

raise "各ホールの規定打数とプレイヤーの打数の入力数が異なります" if r_scores.length != p_scores.length

r_scores.each do |n|
  score = r_scores[n] - p_scores[n]
  p score
end