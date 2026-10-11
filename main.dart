import 'dart:io';

void main() {
  const int smallPrice = 5;
  const int mediumPrice = 7;
  const int largePrice = 10;

  print("===== Pizza Menu =====");
  print("Small  : \$5");
  print("Medium : \$7");
  print("Large  : \$10");

  String choice = "y";

  while (choice.toLowerCase() == "y") {
    stdout.write("\nEnter pizza size (Small/Medium/Large): ");
    String size = stdin.readLineSync()!.toLowerCase();

    stdout.write("Enter quantity: ");
    int quantity = int.parse(stdin.readLineSync()!);

    int total = 0;

    switch (size) {
      case "small":
        total = smallPrice * quantity;
        print("Total Payment: \$${total}");
        break;

      case "medium":
        total = mediumPrice * quantity;
        print("Total Payment: \$${total}");
        break;

      case "large":
        total = largePrice * quantity;
        print("Total Payment: \$${total}");
        break;

      default:
        print("Invalid pizza size.");
    }

    stdout.write("\nDo you want to order again? (y/n): ");
    choice = stdin.readLineSync()!;
  }

  print("\nThank you for your order!");
}