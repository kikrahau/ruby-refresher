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
  array.slice(3,6)
end

def add_element_to_beginning_of_array array, number
  array.unshift(number)
end

def array_sort_by_last_letter_of_word array
  array.sort_by {|element| element.slice(-1)}
end

def get_first_half_of_string word
  word.slice(0,3)
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
  array.sort_by {|w| w.size}.first
end