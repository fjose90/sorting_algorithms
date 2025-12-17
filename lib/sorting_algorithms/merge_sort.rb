# frozen_string_literal: true

module SortingAlgorithms
  module MergeSort
    class << self
      def call(array)
        return array if array.length <= 1

        mid = array.length / 2
        left = call(array[0...mid])
        right = call(array[mid...])

        merge(left, right)
      end

      private

      def merge(left, right)
        result = []

        while left.any? && right.any?
          result << if left.first <= right.first
            left.shift
          else
            right.shift
          end
        end

        result + left + right
      end
    end
  end
end
