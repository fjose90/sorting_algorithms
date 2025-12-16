# frozen_string_literal: true

module SortingAlgorithms
  module InsertionSort
    def self.call(array)
      result = array.dup
      (1...result.length).each do |i|
        key = result[i]
        j = i - 1
        while j >= 0 && result[j] > key
          result[j + 1] = result[j]
          j -= 1
        end
        result[j + 1] = key
      end
      result
    end
  end
end
