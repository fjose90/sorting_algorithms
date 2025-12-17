# frozen_string_literal: true

module SortingAlgorithms
  module BubbleSort
    class << self
      def call(array)
        result = array.dup
        swapped = true
        while swapped
          swapped = false
          (0...result.length - 1).each do |i|
            if result[i] > result[i + 1]
              result[i], result[i + 1] = result[i + 1], result[i]
              swapped = true
            end
          end
        end
        result
      end
    end
  end
end
