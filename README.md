# Product List App

A simple Flutter app to display and search a list of products, built with Clean Architecture and Bloc.

## Features

- Load product list from a local JSON asset
- Search products by name
- View product details
- Error and loading UI states
- Clean Architecture (data/domain/presentation layers)
- Bloc for state management

## How to Run

1. **Clone the repository:**
   ```bash
   git clone <repo-url>
   cd product_list_app
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the app:**
   ```bash
   flutter run
   ```

## Assumptions & Notes

- The product list is loaded from `assets/products.json`.
- Product images use placeholder URLs. Replace with real images as needed.
- No backend/API integration; all data is local.
- The app uses Bloc for state management and follows Clean Architecture principles.
- Minimal input validation is included for the search bar.
- UI is responsive for basic mobile layouts.

---

If you have any questions or need further improvements, feel free to ask!
