# frozen_string_literal: true

r_scores = gets.split(',').map(&:to_i)
p_scores = gets.split(',').map(&:to_i)

raise '各ホールの規定打数とプレイヤーの打数の入力数が異なります' if r_scores.length != p_scores.length

result = []
r_scores.size.times do |n|
  # スコア差分だけで結果が求められない例外処理
  if r_scores[n] == 5 && p_scores[n] == 1
    result << 'コンドル'
    next
  elsif p_scores[n] == 1
    result << 'ホールインワン'
    next
  end

  score = p_scores[n] - r_scores[n]

  case score
  when -3
    result << 'アルバトロス'
  when -2
    result << 'イーグル'
  when -1
    result << 'バーディ'
  when 0
    result << 'パー'
  when 1
    result << 'ボギー'
  else
    result << "#{score}ボギー"
  end
end

result.each { |n| print "#{n}," }
