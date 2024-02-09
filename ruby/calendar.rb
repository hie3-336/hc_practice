# frozen_string_literal: true

require 'date'
require 'optparse'

opt = OptionParser.new

params = {}
opt.on('-m') { |v| params[:m] = v }
opt.parse!(ARGV)

today = Date.today

if params[:m]
  raise "#{ARGV[0]} is neither a month number (1..12) nor a name" if ARGV[0] !~ /^([1-9]|10|11|12)$/
  c_month = ARGV[0].to_i
else
  c_month = today.month
end

end_month = Date.new(today.year, c_month, -1).day
first_wday = (Date.new(today.year, c_month, 1).wday + 6) % 7

text = "     #{c_month}月 #{today.year} \n月 火 水 木 金 土 日\n"

first_wday.times do
  text << '   '
end

end_month.times do |i|
  text << ' ' if i < 9
  text << if !params[:m] && i == today.day - 1
            "\e[30m\e[47m#{i + 1}\e[0m "
          else
            "#{i + 1} "
          end
  text << "\n" if (first_wday + i) % 7 == 6
end

print text
