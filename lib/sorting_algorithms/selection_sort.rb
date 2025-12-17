# frozen_string_literal: true

module SortingAlgorithms
  module SelectionSort
    class << self
      def call(array)
        result = array.dup
        (0...result.length).each do |i|
          min = i
          (i + 1...result.length).each do |j|
            next if result[j] >= result[min]

            temp = result[j]
            result[j] = result[min]
            result[min] = temp
          end
        end
        result
      end
    end
  end
end
