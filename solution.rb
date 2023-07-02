########################################################################################################################

# arr = ['10', '11', '9', '7', '8']

# arr.sort do |a,b|
#   b.to_i <=> a.to_i
# end
# # => ["11", "10", "9", "8", "7"]

########################################################################################################################

# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# books.sort! do |a, b|
#   a.values[2] <=> b.values[2]
# end
# p books

# books.sort_by do |book|
#   book[:published]
# end
# # => [
# # {:title=>"War and Peace", :author=>"Leo Tolstoy", :published=>"1869"},
# # {:title=>"Ulysses", :author=>"James Joyce", :published=>"1922"},
# # {:title=>"The Great Gatsby", :author=>"F. Scott Fitzgerald", :published=>"1925"},
# # {:title=>"One Hundred Years of Solitude", :author=>"Gabriel Garcia Marquez", :published=>"1967"}
# # ]

########################################################################################################################

# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

# arr3 = [['abc'], ['def'], {third: ['ghi']}]

# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

# p arr1[2][1][3]
# p arr2[1][:third][0]
# p arr3[2][:third][0][0]
# p hsh1['b'][1]
# p hsh2[:third].keys[0]

########################################################################################################################

# arr1 = [1, [2, 3], 4]

# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

# hsh1 = {first: [1, 2, [3]]}

# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

# arr1[1][1] = 4
# p arr1

# arr2[2] = 4
# p arr2

# hsh1[:first][2][0] = 4
# p hsh1

# p hsh2[['a']][:a][2] = 4
# p hsh2

########################################################################################################################

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# total_age = 0
# munsters.select do |person|
#   total_age += munsters[person]['age'] if munsters[person]['gender'] == 'male'
# end

# p total_age

#### should be using each_value method so that i can just jump right to the value ###

# total_male_age = 0
# munsters.each_value do |details|
#   total_male_age += details["age"] if details["gender"] == "male"
# end

# total_male_age # => 444

########################################################################################################################

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name|
#   puts "#{name[0]} is a #{name[1]['age']}-year-old #{name[1]['gender']}"
# end

# munsters.each do |name, details|
#   puts "#{name} is a #{details['age']}-year-old #{details['gender']}"
# end

########################################################################################################################

# a = 2
# b = [5, 8]
# arr = [a, b]

# arr[0] += 2 # this is reassigning arr[0] to no longer point to the variable a but to a new variable that contains the integer 4

# arr[1][0] -= a # this is subtracting 2 from b[0] because b is an array, a is not an array so the previous line did not
#                # change a, however this form of reassignment will change arrays so the variable b containing the array
#                # object did in fact change.

# p a
# p b
# p arr

########################################################################################################################

# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# hsh.each do |_, value|
#   value.each do |word|
#     puts word.scan(/[aeiou]/)
#   end
# end

# vowels = 'aeiou'

# hsh.each do |_, value|
#   value.each do |str|
#     str.chars.each do |char|
#       puts char if vowels.include?(char)
#     end
#   end
# end

########################################################################################################################

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# p (arr.map { |array| array.sort { |a, b| b <=> a } })

########################################################################################################################

# arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# new_arr = arr.map do |hshs|
#   hshs.each do |key, value|
#     hshs[key] = value + 1
#   end
# end

# p new_arr
# p arr

# ###ANSWER###
# [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
#   incremented_hash = {}
#   hsh.each do |key, value|
#     incremented_hash[key] = value + 1
#   end
#   incremented_hash
# end
# # => [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]

########################################################################################################################

# arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

# arr.each do |array|
#   array.select! { |digit| digit % 3 == 0 }
# end

# p arr

########################################################################################################################

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# # expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# finalhash = {}

# arr.each do |pre_hash|
#   finalhash[pre_hash[0]] = pre_hash[1]
# end

# p finalhash

########################################################################################################################

# arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]
# # >> [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]

# newarr = arr.sort do |a, b|
#   a.select { |number| number.odd? } <=> b.select { |number| number.odd? }
# end

# p newarr

# ##ANSWER##
# arr.sort_by do |sub_arr|
#   sub_arr.select do |num|
#     num.odd?
#   end
# end
# # => [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]

########################################################################################################################

# # if type fruit puts colors.capitalize
# # if type vegetable puts size.upcase

# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }

# final_arr = []
# hsh.map do |_, value|
#   if value[:type] == 'fruit'
#     final_arr << value[:colors].map { |word| word.capitalize }
#   elsif value[:type] == 'vegetable'
#     final_arr << value[:size].upcase
#   end
# end

# p final_arr

########################################################################################################################

# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# final = arr.select do |hash|
#   hash.values.flatten.all? {|num| num.even?}
# end

# p final

# final = arr.select do |hsh|
#   hsh.all? do |_, value|
#     value.all? do |num|
#       num.even?
#     end
#   end
# end
# # => [{:e=>[8], :f=>[6, 10]}]

# p final

########################################################################################################################


