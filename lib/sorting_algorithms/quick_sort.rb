# frozen_string_literal: true

module SortingAlgorithms
  module QuickSort
    class << self
      def call(array)
        return array if array.length <= 1

        pivot = array.last
        left = []
        right = []

        array[0...-1].each do |element|
          if element <= pivot
            left << element

          else
            right << element
          end
        end

        call(left) + [pivot] + call(right)
      end
    end
  end
end
