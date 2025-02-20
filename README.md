# Dart: Handling JSON Response Variations and Robust Error Handling

This repository demonstrates a common error in Dart when handling JSON responses from APIs and provides a solution for more robust error handling.

The `bug.dart` file contains code that fails when the API returns a JSON object instead of an array. The `bugSolution.dart` file provides a corrected version.

## Bug Description:
The original code assumes the API always returns a JSON array. If the API returns a single JSON object, accessing `item['name']` will throw a type error because `item` is not a map.

The improved code adds checks to handle both array and single object responses, making it more robust and less prone to unexpected errors.  It also improves basic error handling.