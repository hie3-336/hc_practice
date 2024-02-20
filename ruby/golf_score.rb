# frozen_string_literal: true

r_scores = gets.split(',').map(&:to_i)
p_scores = gets.split(',').map(&:to_i)

raise '各ホールの規定打数とプレイヤーの打数の入力数が異なります' if r_scores.length != p_scores.length

SCORE_MAPPING = {
  -3 => 'アルバトロス',
  -2 => 'イーグル',
  -1 => 'バーディ',
  0 => 'パー',
  1 => 'ボギー'
}

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

  # 各ホールのスコア差分を取得
  score = p_scores[n] - r_scores[n]

  # スコア差分から結果判定
  result << (SCORE_MAPPING[score] ||= "#{score}ボギー")
end

# 結果出力
print result.join(',')
