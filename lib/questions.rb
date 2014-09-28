def select_elements_starting_with_a array
  array.select {|element| element.start_with?('a') }
end

def select_elements_starting_with_vowel array
  array.select {|element| element.start_with?('a','i','o','e','u') }
end

def remove_nils_from_array array
  array.compact!
end

def remove_nils_and_false_from_array array
  array.reject {|element| !element.is_a? String }
end

def reverse_every_element_in_array array
  array.each {|element| element.reverse! }
end

def every_possible_pairing_of_students array
  array.combination(2).to_a
end

def all_elements_except_first_3 array
  array[3..-1]
end

def add_element_to_beginning_of_array array, number
  array.unshift(number)
end

def array_sort_by_last_letter_of_word array
  array.sort_by {|element| element.slice(-1)}
end

def get_first_half_of_string word
  letter_count = (word.size/2.0).round
  word.slice(0,letter_count)
end

def make_numbers_negative number
  if number > 0
    number * -1
  else 
    number
  end
end

def separate_array_into_even_and_odd_numbers array
  [] << array.select {|number| number.even?} << array.select{|number| number.odd?}
end

def number_of_elements_that_are_palindromes array
  array.select {|word| word.slice(0) == word.slice(-1) }.count
end

def shortest_word_in_array array
  array.sort_by(&:size).first
end

def longest_word_in_array array
  array.sort_by(&:size).last
end

def total_of_array array
  array.inject(:+)
end

def double_array array
  array*2
end

def turn_symbol_into_string symbol
  symbol.to_s
end

def average_of_array array
  (array.inject(:+).to_f / array.size).round
end

def get_elements_until_greater_than_five array
  find_element = array.find {|i| i > 5}
  array[0,array.index(find_element)]
end

def convert_array_to_a_hash array
  Hash[*array.flatten]
end

def get_all_letters_in_array_of_words array
  array.map {|w| w.split("")}.flatten.sort
end

def swap_keys_and_values_in_a_hash hash
  hash.invert
end

def add_together_keys_and_values hash
  hash.flatten(2).inject(:+)
end

def remove_capital_letters_from_string word
  split_word = word.split('')
  split_word.delete_if {|letter| ("A".."Z").include?(letter)}.join
end

def round_up_number number
  number.ceil
end

def round_down_number number
  number.floor
end

def format_date_nicely date
  date.strftime("%d/%m/%Y")
end

def get_domain_name_from_email_address email
  
end

def get_upper_limit_of range
  range.last
end

def is_a_3_dot_range? range
  range.exclude_end?
end

def square_root_of number
  Math.sqrt(number)
end

def word_count_a_file filename
  File.read(filename).scan(/\w+/).count
end

def call_method_from_string methodname
  raise NameError if methodname.is_a String
end

def is_a_2014_bank_holiday? date
  bank_holidays = [Time.new(2014,5,26),
                  Time.new(2014,5,26),
                  Time.new(2014,8,25),
                  Time.new(2014,12,25),
                  Time.new(2014,12,26),
                  Time.new(2015,1,1),
                  Time.new(2015,4,3),
                  Time.new(2015,4,6),
                  Time.new(2015,5,4),
                  Time.new(2015,5,25),
                  Time.new(2015,8,31),
                  Time.new(2015,12,25),
                  Time.new(2015,12,28)]
  
bank_holidays.include?(date)
end

def your_birthday_is_on_a_friday_in_the_year date
  year = date.year
  until Time.new(year,date.month,date.day).friday?
    year += 1
  end
  year
end

def count_words_of_each_length_in_a_file filename
  words, count = IO.read(filename).scan(/\w+/), Hash.new(0)
  words.each { |w| count[w.size] += 1 } and return count
end


