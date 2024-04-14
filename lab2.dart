import 'dart:io';

// Reading a List of Expenses and Printing the Total
void readExpensesAndPrintTotal() {
  List<double> expenses = [];
  print('Enter your expenses (type "done" to finish): ');

  while (true) {
    String? userInput = stdin.readLineSync();
    if (userInput == 'done') break;
    double? expense = double.tryParse(userInput!);
    if (expense != null) {
      expenses.add(expense);
    } else {
      print('Please enter a valid number or "done" to finish.');
    }
  }

  double total = expenses.reduce((sum, element) => sum + element);
  print('Total Expense: \$${total.toStringAsFixed(2)}');
}

// Manipulating a Map and Printing Keys and Values
void manipulateMapAndPrint() {
  Map<String, String> personInfo = {
    'name': 'John Doe',
    'address': '123 Main St',
    'age': '30',
    'country': 'USA',
  };

  personInfo['country'] = 'Canada'; // Updating the country

  personInfo.forEach((key, value) {
    print('$key: $value');
  });
}

// Filtering Keys with a Specific Length in a Map
void filterMapKeysByLength() {
  Map<String, String> contacts = {
    'John': '123456',
    'Mike': '654321',
    'Ana': '987654',
    'Dave': '112233',
  };

  var filteredKeys = contacts.keys.where((key) => key.length == 4);
  print('Keys with 4 characters: $filteredKeys');
}

// A Simple To-Do Application
void simpleTodoApplication() {
  List<String> tasks = [];
  String userInput;

  do {
    print(
        '\nTo-Do Application\n1. Add a task\n2. Remove a task\n3. View tasks\n4. Exit');
    print('Enter your choice:');
    userInput = stdin.readLineSync()!;

    switch (userInput) {
      case '1':
        print('Enter a task:');
        String task = stdin.readLineSync()!;
        tasks.add(task);
        break;
      case '2':
        print('Enter the task number to remove:');
        int index = int.parse(stdin.readLineSync()!) - 1;
        if (index >= 0 && index < tasks.length) {
          tasks.removeAt(index);
        } else {
          print('Invalid task number');
        }
        break;
      case '3':
        print('Your tasks:');
        for (int i = 0; i < tasks.length; i++) {
          print('${i + 1}. ${tasks[i]}');
        }
        break;
      case '4':
        print('Exiting...');
        break;
      default:
        print('Invalid choice, please try again.');
    }
  } while (userInput != '4');
}

void main() {
  // Call each function to demonstrate
  readExpensesAndPrintTotal();
  manipulateMapAndPrint();
  filterMapKeysByLength();
  simpleTodoApplication();
}
