# Sorting Algorithms in Ruby

## 📌 Overview

This repository contains classic **sorting algorithms implemented in Ruby**.
The project aims to demonstrate different approaches to sorting, including iterative and recursive methods, while following best practices and clean code principles.

---

## 🧰 Algorithms Implemented

| Algorithm      | Type      | Stable | Recursive | Time Complexity (Worst) |
| -------------- | --------- | ------ | --------- | ----------------------- |
| Bubble Sort    | Iterative | Yes    | No        | O(n²)                   |
| Insertion Sort | Iterative | Yes    | No        | O(n²)                   |
| Selection Sort | Iterative | No     | No        | O(n²)                   |
| Merge Sort     | Recursive | Yes    | Yes       | O(n log n)              |
| Quick Sort     | Recursive | No*    | Yes       | O(n²) / O(n log n)      |

> *Quick Sort stability depends on implementation.

---

## 🍰 Installation

1. Clone the repository:

```bash
git clone https://github.com/fjose90/sorting_algorithms.git
cd sorting_algorithms
```

2. Install dependencies (if using Bundler):

```bash
bundle install
```

---

## 🚀 Usage

Call any algorithm from the command line or in your Ruby script:

```ruby
require './lib/sorting_algorithms/merge_sort'

array = [5, 2, 9, 1, 7]
sorted = SortingAlgorithms::MergeSort.call(array)

puts sorted.inspect
# Output: [1, 2, 5, 7, 9]
```

---

### Examples

**Insertion Sort:**

```ruby
require './lib/sorting_algorithms/insertion_sort'

array = [8, 3, 1, 6, 5]
sorted = SortingAlgorithms::InsertionSort.call(array)
puts sorted.inspect
# => [1, 3, 5, 6, 8]
```

**Merge Sort:**

```ruby
require './lib/sorting_algorithms/merge_sort'

array = [4, 7, 2, 9]
sorted = SortingAlgorithms::MergeSort.call(array)
puts sorted.inspect
# => [2, 4, 7, 9]
```

---

## 🦲 Running Tests

This project uses **RSpec** for testing. Run all tests with:

```bash
bundle exec rspec
```

Or check a specific algorithm:

```bash
bundle exec rspec spec/merge_sort_spec.rb
```

---

## 📊 Algorithm Complexity

| Algorithm      | Best Case  | Average Case | Worst Case | Space Complexity |
| -------------- | ---------- | ------------ | ---------- | ---------------- |
| Bubble Sort    | O(n)       | O(n²)        | O(n²)      | O(1)             |
| Insertion Sort | O(n)       | O(n²)        | O(n²)      | O(1)             |
| Selection Sort | O(n²)      | O(n²)        | O(n²)      | O(1)             |
| Merge Sort     | O(n log n) | O(n log n)   | O(n log n) | O(n)             |
| Quick Sort     | O(n log n) | O(n log n)   | O(n²)      | O(log n)         |

---

## 📓 Contributing

Feel free to:

* Add new algorithms
* Improve performance
* Add more test cases
* Refactor code for clarity

Follow **Conventional Commits**:

```bash
feat(algorithm): add new algorithm
fix(algorithm): fix bug in implementation
refactor(algorithm): improve readability
test(algorithm): add or update test cases
```

---

## 📌 Notes

* All algorithms return a **new sorted array**, keeping the original array intact.
* The project emphasizes **readable and maintainable Ruby code**, making it suitable for learning and portfolio purposes.

---

## 🛡️ License

This project is licensed under **MIT License**.
