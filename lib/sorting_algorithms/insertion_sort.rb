# frozen_string_literal: true

module SortingAlgorithms
  module InsertionSort
    class << self
      def call(array)
        result = array.dup

        (1...result.length).each do |i|
          j = i - 1
          key = result[i]

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
end
