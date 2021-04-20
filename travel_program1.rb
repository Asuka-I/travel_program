puts <<~TEXT
  旅行プランを選択して下さい。

  1.沖縄旅行(10000円)
  2.北海道旅行(20000円)
  3.九州旅行(15000円)

TEXT


  plans = [
    { place: "沖縄旅行", price: 10000 },
    { place: "北海道旅行", price: 20000 },
    { place: "九州旅行", price: 15000 },
  ]

# プラン選択
print "プラン番号を選択 > "
while true
  select_plan_num = gets.to_i
  chosen_plan_num = plans[select_plan_num - 1]
  break if (1..3).include?(select_plan_num)
  puts "1〜3の番号を入力して下さい。"
end
puts "#{chosen_plan_num[:place]}ですね。"

# 予約人数
puts "何名で予約されますか？"
while true
  print "人数を入力 > "
  number_of_tourists = gets.to_i
  break if number_of_tourists >= 1
  puts "1以上を入力して下さい。"
end
puts "#{number_of_tourists}名ですね。"

# 合計金額
total_price = chosen_plan_num[:price] * number_of_tourists
if number_of_tourists >= 5
  puts "5名以上ですので10％割引となります。"
  total_price *= 0.9
end
puts "合計料金は#{total_price.floor}円になります。"