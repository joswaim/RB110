def find_sum_row(int)
  first = ((1...int).sum * 2)
  pre_goal = int * 2
  goal = first + pre_goal
  goal_int = 0
  (first + 2).step(by: 2, to: goal) { |integer| goal_int += integer }
  goal_int
end

p find_sum_row(3)
