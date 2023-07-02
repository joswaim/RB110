# def string_to_signed_integer(string)
#   integers = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }
#   number = 0
#   multiple = 0
#   string.chars.reverse.each do |num|
#     next if num == '+'
#     next number *= -1 if num == '-'

#     number += integers[num] * 10**multiple
#     multiple += 1
#   end
#   p number
# end

# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100



# def integer_to_string(integer)
#   integers = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }
#   string = ''
#   integer.digits.reverse.each do |int|
#     string << integers[int]
#   end
#   string
# end

# p integer_to_string(4321) == '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(5000) == '5000'

# def signed_integer_to_string(integer)
#   if integer.negative?
#     integer_to_string(-integer).prepend('-')
#   elsif integer.positive?
#     integer_to_string(integer).prepend('+')
#   else
#     integer_to_string(integer)
#   end
# end


# p signed_integer_to_string(4321) == '+4321'
# p signed_integer_to_string(-123) == '-123'
# p signed_integer_to_string(0) == '0'


# def ascii_value(string)
#   string.chars.map { |char| char.ord }.sum
# end

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0

# def time_of_day(integer)
#   hour = "%02d" % ((integer / 60) % 24)
#   minute = "%02d" % (integer % 60)
#   "#{hour}:#{minute}"
# end

# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"

# def after_midnight(time)
#   time[0, 2].to_i % 24 * 60 + time[3, 2].to_i
# end

# def before_midnight(time)
#   time[0, 2].to_i % 24 * 60 - time[3, 2].to_i
# end

# p after_midnight('00:00') == 0
# p before_midnight('00:00') == 0
# p after_midnight('12:34') == 754
# p before_midnight('12:34') == 686
# p after_midnight('24:00') == 0
# p before_midnight('24:00') == 0


def swap(string)
  string.split.each do |word|
    p word.split.each
  end.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'