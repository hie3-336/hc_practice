# frozen_string_literal: true

require 'date'
require 'optparse'

opt = OptionParser.new

# option -m を受け付けるようにする
params = {}
opt.on('-m') { |v| params[:m] = v }
opt.parse!(ARGV)

# 本日の日付取得
today = Date.today

# 1-12の整数以外のオプション入力はエラーを出す オプションがない場合は現在の月を代入
c_month = if params[:m]
            raise "#{ARGV[0]} is neither a month number (1..12) nor a name" if ARGV[0] !~ /^([1-9]|10|11|12)$/

            ARGV[0].to_i
          else
            today.month
          end

# 指定月の日数取得
end_month = Date.new(today.year, c_month, -1).day

# 月初日の曜日取得
first_wday = (Date.new(today.year, c_month, 1).wday + 6) % 7

# カレンダー上部出力
text = "     #{c_month}月 #{today.year} \n月 火 水 木 金 土 日\n"

# 月初日の曜日に1日を出力するために空白を出力
first_wday.times do
  text << '   '
end

end_month.times do |i|
  # 一桁の日数の場合は出力を合わせるために空白1文字を追加
  text << ' ' if i < 9

  # オプションを指定せず出力日が今日の場合は白背景出力に変更
  text << if !params[:m] && i == today.day - 1
            "\e[30m\e[47m#{i + 1}\e[0m "
          else
            "#{i + 1} "
          end

  # 日曜まで出力したら改行
  text << "\n" if (first_wday + i) % 7 == 6
end

print text
