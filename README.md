# Unhandled JSON Access in Dart

This repository demonstrates a common error in Dart applications when handling JSON data: accessing elements in a JSON list or object without performing proper null checks. This can lead to runtime exceptions if the expected data is missing or is not in the expected format.

The `bug.dart` file contains the erroneous code. The `bugSolution.dart` file showcases how to fix this bug with appropriate null checks.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`. Observe that it will likely throw an exception if the API response doesn't contain the expected data structure or elements.
3. Run `bugSolution.dart` to see the corrected version handling potential null values gracefully.