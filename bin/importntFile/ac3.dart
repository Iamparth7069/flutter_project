void main() {
  // Create a Set of integers
  Set<int> numbers = {1, 2, 3, 4, 5};

  // Add an element to the Set
  numbers.add(6);

  // Remove an element from the Set
  numbers.remove(3);

  // Check if an element is present in the Set
  if (numbers.contains(2)) {
    print('Set contains 2');
  }

  // Get the size of the Set
  print('Size of Set: ${numbers.length}');

  // Iterate over the elements of the Set
  print('Elements of Set:');
  for (int number in numbers) {
    print(number);
  }

  // Create another Set of integers
  Set<int> otherNumbers = {4, 5, 6, 7, 8};

  // Get the intersection of the two Sets
  Set<int> intersection = numbers.intersection(otherNumbers);
  print('Intersection of Sets:');
  for (int number in intersection) {
    print(number);
  }

  // Get the union of the two Sets
  Set<int> union = numbers.union(otherNumbers);
  print('Union of Sets:');
  for (int number in union) {
    print(number);
  }

  // Get the difference of the two Sets
  Set<int> difference = numbers.difference(otherNumbers);
  print('Difference of Sets:');
  for (int number in difference) {
    print(number);
  }

  // Clear the Set
  numbers.clear();
  print('Cleared Set: $numbers');
}