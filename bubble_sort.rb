# frozen_string_literal: true

require 'pry-byebug'

def bubble_sort(numbers)
  until numbers == numbers.sort
    numbers.each_with_index do |number, index|
      numbers[index] = number

      if !numbers[index + 1].nil? && (numbers[index + 1] < numbers[index])
        numbers[index], numbers[index + 1] =
          numbers[index + 1], numbers[index]
      end
    end
  end
  numbers
end

p bubble_sort([4, 3, 78, 2, 0, 2])
