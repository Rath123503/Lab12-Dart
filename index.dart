import 'dart:io';


double calculateBill(double usage) {
  double totalBill = 0;

  if (usage <= 0) {
    return 0;
  }

  
  if (usage <= 100) {
    totalBill = usage * 150;
  } 
 
  else if (usage <= 200) {
    totalBill = (100 * 150) + ((usage - 100) * 210);
  } 
  
  else if (usage <= 300) {
    totalBill = (100 * 150) + (100 * 210) + ((usage - 200) * 300);
  } 
  
  else if (usage <= 400) {
    totalBill = (100 * 150) + (100 * 210) + (100 * 300) + ((usage - 300) * 420);
  } 
  
  else if (usage <= 500) {
    totalBill = (100 * 150) + (100 * 210) + (100 * 300) + (100 * 420) + ((usage - 400) * 520);
  } 
  
  else {
    totalBill = (100 * 150) + (100 * 210) + (100 * 300) + (100 * 420) + (100 * 520) + ((usage - 500) * 670);
  }

  return totalBill;
}

void main() {
  print('--- EDC Electricity Bill Calculator ---');

  while (true) {
    stdout.write('Enter your total electricity usage in kWh: ');
    String? input = stdin.readLineSync();

    if (input == null) {
      print('No input received. Exiting.');
      break;
    }

    
    try {
      double usage = double.parse(input);

      if (usage < 0) {
        print('Usage cannot be negative. Please enter a valid number.');
        continue; 
      }

      double bill = calculateBill(usage);

      
      print('\n-----------------------------------');
      print('Usage: ${usage.toStringAsFixed(2)} kWh');
      print('Your total electricity bill is: ${bill.toStringAsFixed(0)} KHR');
      print('-----------------------------------');
      break; // Exit the loop after successful calculation

    } catch (e) {
      print('Invalid input. Please enter a valid number.');
    }
  }
}
