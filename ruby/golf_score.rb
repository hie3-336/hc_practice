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

  result << case score
            when -3
              'アルバトロス'
            when -2
              'イーグル'
            when -1
              'バーディ'
            when 0
              'パー'
            when 1
              'ボギー'
            else
              "#{score}ボギー"
            end
end

print result.join(',')
