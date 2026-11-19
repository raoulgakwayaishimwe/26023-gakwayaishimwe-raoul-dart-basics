// Student: Gakwaya Ishimwe Raoul
// Reg no: 26023
const String regNo = '26023';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

const String fullName = 'Gakwaya Ishimwe Raoul';

int countVowels(String text) {
  // by GIR
  String lower = text.toLowerCase();
  int count = 0;
  int i = 0;
  while (i < lower.length) {
    String c = lower[i];
    if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
      count++;
    }
    i++;
  }
  return count;
}

String initials(String fullName) {
  // by GIR
  List<String> parts = fullName.trim().split(RegExp(r'\s+'));
  String result = '';
  int i = 0;
  while (i < parts.length) {
    if (parts[i].isNotEmpty) {
      result += '${parts[i][0].toUpperCase()}.';
    }
    i++;
  }
  return result;
}

void drawTriangle(int height) {
  // by GIR
  int row = 1;
  while (row <= height) {
    String symbol = row % 2 == 1 ? '*' : '#';
    print(' ' * (height - row) + symbol * row);
    row++;
  }
}

int momoFee(int amount) {
  // by GIR
  if (amount <= 0) return -1;
  if (amount <= 1000) return 20;
  if (amount <= 10000) return 100;
  if (amount <= 150000) return 250;
  return 1500;
}

String maskPhone(String phone) {
  // by GIR
  if (phone.length != 10) return 'INVALID';
  return phone.substring(0, 3) +
      '*' * (phone.length - 5) +
      phone.substring(phone.length - 2);
}

void main() {
  // by GIR
  print('Reg no: $regNo | D = $d | T = $t');

  print('\n--- B2 ---');
  print('$fullName has ${countVowels(fullName)} vowels');

  print('\n--- B3 ---');
  print(initials(fullName));
  print(initials('  ana   uwase '));
  print("'${initials('   ')}'");

  print('\n--- C5 ---');
  drawTriangle(d + 3);
  drawTriangle(0);
  drawTriangle(-2);

  print('\n--- D2 ---');
  const String phone = '0788123456';
  int totalFees = 0;
  int i = 1;
  while (i <= d + 3) {
    int amount = i * 4000 + t * 100;
    int fee = momoFee(amount);
    print('Receipt $i | $amount RWF | fee $fee RWF | to ${maskPhone(phone)}');
    totalFees += fee;
    i++;
  }
  print('Total fees: $totalFees RWF');
}
