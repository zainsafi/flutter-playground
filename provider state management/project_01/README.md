Below is the complete step-by-step usage of Provider using `Consumer` as a listener.

## Step 1: Install Provider

Run in your project terminal:

```bash
flutter pub add provider
```

## Step 2: Create the provider class

Create `counter_provider.dart`:

```dart
import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  // Private state
  int _counter = 0;

  // Getter through which the UI reads the state
  int get counter => _counter;

  void increment() {
    // Change the state
    _counter++;

    // Inform all listening Consumers
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}
```

---

## Step 3: Register the provider

In `main.dart`, import Provider and your provider class:

```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';
```

Then wrap your application with `ChangeNotifierProvider`:

```dart
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const MyApp(),
    ),
  );
}
```

`ChangeNotifierProvider` creates and provides one `CounterProvider` object to all widgets beneath it.

The widget structure becomes:

```text
ChangeNotifierProvider
└── MyApp
    └── MaterialApp
        └── CounterScreen
```

Therefore, `CounterScreen` can access `CounterProvider`.

---

## Step 4: Create `MaterialApp`

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
```

---

## Step 5: Use `Consumer` to listen and display data

```dart
Consumer<CounterProvider>(
  builder: (context, provider, child) {
    return Text(
      '${provider.counter}',
      style: const TextStyle(fontSize: 40),
    );
  },
)
```

Understanding its parts:

```dart
Consumer<CounterProvider>
```

means:

> Find and listen to `CounterProvider`.

The `builder` has three parameters:

```dart
builder: (context, provider, child)
```

- `context`: the location of this `Consumer` in the widget tree.
- `provider`: the `CounterProvider` object.
- `child`: an optional widget that should not rebuild.

Through `provider`, you can access:

```dart
provider.counter
provider.increment()
```

When `notifyListeners()` executes, this `builder` runs again.

---

## Step 6: Call methods from buttons

The buttons only perform actions, so they should not listen:

```dart
ElevatedButton(
  onPressed: () {
    Provider.of<CounterProvider>(
      context,
      listen: false,
    ).increment();
  },
  child: const Text('Increment'),
)
```

`listen: false` means:

> Give me the `CounterProvider` object, but do not rebuild this widget when its data changes.

The button does not need to listen because it does not display the counter.

---

## Step 7: Complete screen

```dart
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider with Consumer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter value:',
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 10),

            // This Consumer listens to CounterProvider.
            Consumer<CounterProvider>(
              builder: (context, provider, child) {
                return Text(
                  '${provider.counter}',
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Provider.of<CounterProvider>(
                  context,
                  listen: false,
                ).increment();
              },
              child: const Text('Increment'),
            ),

            ElevatedButton(
              onPressed: () {
                Provider.of<CounterProvider>(
                  context,
                  listen: false,
                ).decrement();
              },
              child: const Text('Decrement'),
            ),
          ],
        ),
      ),
    );
  }
}
```

## Complete code in one file

```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const MyApp(),
    ),
  );
}

// STEP 1: Create the provider class
class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}

// STEP 2: Create the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}

// STEP 3: Build the screen
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider with Consumer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter value:',
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 10),

            // STEP 4: Listen to the provider
            Consumer<CounterProvider>(
              builder: (context, provider, child) {
                return Text(
                  '${provider.counter}',
                  style: const TextStyle(fontSize: 40),
                );
              },
            ),

            const SizedBox(height: 20),

            // STEP 5: Access provider without listening
            ElevatedButton(
              onPressed: () {
                Provider.of<CounterProvider>(
                  context,
                  listen: false,
                ).increment();
              },
              child: const Text('Increment'),
            ),

            ElevatedButton(
              onPressed: () {
                Provider.of<CounterProvider>(
                  context,
                  listen: false,
                ).decrement();
              },
              child: const Text('Decrement'),
            ),
          ],
        ),
      ),
    );
  }
}
```

## Complete execution flow

When you press the increment button:

```text
1. onPressed executes
            ↓
2. Provider.of finds CounterProvider
            ↓
3. listen: false means the button does not listen
            ↓
4. increment() executes
            ↓
5. _counter increases
            ↓
6. notifyListeners() sends a notification
            ↓
7. Consumer receives the notification
            ↓
8. Consumer's builder runs again
            ↓
9. Text displays the new counter
```

The main pattern to remember is:

```dart
// Register the provider
ChangeNotifierProvider(
  create: (context) => CounterProvider(),
  child: const MyApp(),
)
```

```dart
// Listen and display changing data
Consumer<CounterProvider>(
  builder: (context, provider, child) {
    return Text('${provider.counter}');
  },
)
```

```dart
// Call a method without listening
Provider.of<CounterProvider>(
  context,
  listen: false,
).increment();
```
