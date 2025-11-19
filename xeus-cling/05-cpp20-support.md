---
subject: Xeus-Cling Quickstart Tutorial
kernelspec:
  name: xcpp20
  display_name: C++20
  language: C++20
---

# C++20 Support

## `std::span`

```{code-cell} cpp
#include <iostream>
#include <vector>
#include <span> // C++20 header
#include <array>
```
+++
```{code-cell} cpp
// Function that takes a std::span of integers
void process_data(std::span<const int> data_view) {
    std::cout << "Processing data: ";
    for (int value : data_view) {
        std::cout << value << " ";
    }
    std::cout << std::endl;
}
```
+++
```{code-cell} cpp
// 1. Using a C-style array
int c_array[] = {10, 20, 30, 40, 50};
std::span<const int> span_from_c_array(c_array);
process_data(span_from_c_array);

// 2. Using a std::vector
std::vector<int> my_vector = {1, 2, 3, 4, 5, 6, 7};
std::span<const int> span_from_vector(my_vector);
process_data(span_from_vector);

// 3. Using a std::array
std::array<int, 4> my_array = {100, 200, 300, 400};
std::span<const int> span_from_std_array(my_array);
process_data(span_from_std_array);

// 4. Creating a sub-span (a view of a portion of the original data)
// View from index 2, for 3 elements
std::span<const int> sub_span = span_from_vector.subspan(2, 3);
process_data(sub_span);

// 5. Modifying data through a non-const span (if allowed by original data)
std::vector<int> mutable_vector = {10, 20, 30};
std::span<int> mutable_span(mutable_vector);
mutable_span[0] = 5; // Modifies mutable_vector[0]
std::cout << "Modified vector through span: " << mutable_vector[0] << std::endl;
process_data(mutable_vector);
```
+++

## Ranges

```{code-cell} cpp
#include <ranges>
```
+++
```{code-cell} cpp
auto const ints = {0, 1, 2, 3, 4, 5};
auto even = [](int i) { return 0 == i % 2; };
auto square = [](int i) { return i * i; };

// the "pipe" syntax of composing the views:
for (int i : ints | std::views::filter(even) | std::views::transform(square))
    std::cout << i << ' ';

std::cout << '\n';

// a traditional "functional" composing syntax:
for (int i : std::views::transform(std::views::filter(ints, even), square))
    std::cout << i << ' ';
```

## Three-way-compare
```{code-cell} cpp
#include <compare> // Required for std::strong_ordering
```
+++
```{code-cell} cpp
struct Point {
    int x;
    int y;

    // Explicitly defining the three-way comparison operator
    auto operator<=>(const Point& other) const {
        if (auto cmp = x <=> other.x; cmp != 0) {
            return cmp; // If x's are different, return their comparison result
        }
        return y <=> other.y; // Otherwise, compare y's
    }

    // operator== is still needed for types where operator<=> might not yield a strong ordering (e.g., floating-point types)
    // or if you want a custom equality comparison that differs from the three-way comparison.
    // However, for types like this Point struct, if operator<=> returns std::strong_ordering,
    // the compiler can synthesize operator== from it.
    // For demonstration, we'll explicitly define it here.
    bool operator==(const Point& other) const {
        return x == other.x && y == other.y;
    }
};
```
+++
```{code-cell} cpp
Point p1{1, 2};
Point p2{3, 4};
Point p3{1, 2};

std::cout << std::boolalpha; // Output booleans as true/false

// Using the synthesized comparison operators
std::cout << "p1 < p2: " << (p1 < p2) << std::endl;
std::cout << "p1 == p3: " << (p1 == p3) << std::endl;
std::cout << "p2 > p1: " << (p2 > p1) << std::endl;
std::cout << "p1 != p2: " << (p1 != p2) << std::endl;
```



