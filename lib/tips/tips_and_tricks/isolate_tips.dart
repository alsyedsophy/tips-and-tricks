import 'dart:isolate';

Future<int> getSum() async {
  int sum = await Isolate.run(() {
    int sum = 0;
    for (int i = 0; i <= 1000000000; i++) {
      sum += i;
    }
    return sum;
  });
  return sum;
}
