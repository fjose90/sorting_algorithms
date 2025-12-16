# frozen_string_literal: true

require "spec_helper"

RSpec.describe(SortingAlgorithms::BubbleSort) do
  describe ".call" do
    it "returns an ascending sorted array" do
      expect(described_class.call([10, 4, 8, 3, 11]))
        .to(eq([3, 4, 8, 10, 11]))
    end

    it "returns an ascending sorted array with repeating numbers" do
      expect(described_class.call([10, 10, 8, 8, 11]))
        .to(eq([8, 8, 10, 10, 11]))
    end

    it "returns an ascending sorted array with zeros and negative numbers" do
      expect(described_class.call([0, -1, -20, 8, 11]))
        .to(eq([-20, -1, 0, 8, 11]))
    end
  end
end
