# frozen_string_literal: true

require 'pry-byebug'

def bubble_sort(numbers)
  until sorted?(numbers)
    numbers.each_index do |idx|
      if !numbers[idx + 1].nil? && (numbers[idx + 1] < numbers[idx])
        numbers[idx], numbers[idx + 1] = numbers[idx + 1], numbers[idx]
      end
    end
  end
  numbers
end

def sorted?(numbers)
  numbers.reduce { |first, second| first <= second ? second : (return false) }
  true
end

p bubble_sort([4, 3, 78, 2, 0, 2])
