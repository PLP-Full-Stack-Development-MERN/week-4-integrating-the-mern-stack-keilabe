import 'dart:io';

void main() {
  // String Manipulation Examples
  print('\n=== String Manipulation ===');
  String firstName = 'John';
  String lastName = 'Doe';
  
  // String concatenation
  String fullName = firstName + ' ' + lastName;
  print('Concatenation: $fullName');
  
  // String interpolation
  String greeting = 'Hello, $fullName!';
  print('Interpolation: $greeting');
  
  // Substring extraction
  String substring = fullName.substring(0, 4);
  print('Substring (0-4): $substring');
  
  // Case conversion
  print('Uppercase: ${fullName.toUpperCase()}');
  print('Lowercase: ${fullName.toLowerCase()}');
  
  // String reversal
  String reversed = fullName.split('').reversed.join('');
  print('Reversed: $reversed');
  
  // String length
  print('Length: ${fullName.length}');

  // Collections Examples
  print('\n=== Collections ===');
  
  // List operations
  List<String> fruits = ['apple', 'banana', 'orange'];
  print('Original list: $fruits');
  fruits.add('mango');
  print('After adding: $fruits');
  fruits.remove('banana');
  print('After removing: $fruits');
  
  // Set operations
  Set<int> numbers = {1, 2, 3, 3, 4, 4, 5}; // Duplicates are automatically removed
  print('Set: $numbers');
  numbers.add(6);
  print('After adding to set: $numbers');
  
  // Map operations
  Map<String, int> ages = {
    'John': 25,
    'Jane': 30,
    'Bob': 35,
  };
  print('Map: $ages');
  ages['Alice'] = 28;
  print('After adding to map: $ages');

  // File Handling
  print('\n=== File Handling ===');
  try {
    // Writing to a file
    final file = File('output.txt');
    file.writeAsStringSync('Hello, this is a test file!\n');
    print('File written successfully');
    
    // Reading from a file
    String content = file.readAsStringSync();
    print('File content: $content');
  } catch (e) {
    print('Error handling file: $e');
  }

  // Date and Time
  print('\n=== Date and Time ===');
  DateTime now = DateTime.now();
  print('Current date and time: $now');
  
  // Format date
  String formattedDate = '${now.day}/${now.month}/${now.year}';
  print('Formatted date: $formattedDate');
  
  // Add days
  DateTime futureDate = now.add(const Duration(days: 7));
  print('Date after 7 days: $futureDate');
  
  // Calculate difference between dates
  Duration difference = futureDate.difference(now);
  print('Difference in days: ${difference.inDays}');

  // Exercise: Combined Application
  print('\n=== Combined Application ===');
  List<String> userEntries = [];
  
  // Function to process user input
  void processUserInput(String input) {
    // String manipulation
    String processedInput = input.toUpperCase();
    String reversedInput = processedInput.split('').reversed.join('');
    
    // Add to collection
    userEntries.add('$processedInput | $reversedInput | ${DateTime.now()}');
    
    // Save to file
    try {
      final file = File('user_entries.txt');
      file.writeAsStringSync(userEntries.join('\n'));
      print('Entry saved successfully');
    } catch (e) {
      print('Error saving entry: $e');
    }
  }

  // Test the combined application
  processUserInput('Hello World');
  processUserInput('Dart Programming');
} 