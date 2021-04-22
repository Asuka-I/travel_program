# プランを表示
def disp_plans(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(1) do | plan, i |
    puts "#{i}.#{plan[:place]} (#{plan[:price]}円)"
  end
end

# プラン選択
def choose_plan(plans)
  print "プランの番号を選択 > "
  while true
    select_plan_num = gets.to_i
    break if (1..3).include?(select_plan_num)
    puts "1〜3の番号から選んでください。"
  end
  plans[select_plan_num - 1]
end

# 予約人数
def decide_number_of_tourists(chosen_plan)
  puts "#{chosen_plan[:place]}旅行ですね。"
  puts "何名で予約されますか？"
  while true
    print "人数を入力 > "
    number_of_tourists = gets.to_i
    break if number_of_tourists >= 1
    puts "1以上を入力してください。"
  end
  number_of_tourists
end

# 合計金額
def calculate_charges(chosen_plan, number_of_tourists)
  puts "#{number_of_tourists}名ですね。"
  total_price = chosen_plan[:price] * number_of_tourists
  if number_of_tourists >= 5
    puts "5名以上ですので10%割引となります"
    total_price *= 0.9
  end
  puts "合計金額は#{total_price.floor}円になります。"
end