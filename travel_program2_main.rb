require "./travel_program2_methods.rb"

# プランデータ
plans = [
  { place: "沖縄", price: 10000},
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 }
]

disp_plans(plans)
chosen_plan = choose_plan(plans)
number_of_tourists = decide_number_of_tourists(chosen_plan)
calculate_charges(chosen_plan, number_of_tourists)
