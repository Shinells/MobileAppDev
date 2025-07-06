MyBank App – Mobile Banking Application

Overview

The MyBank App is a prototype mobile banking application built using Flutter and Dart. This project replicates the core functionalities of a typical bank's mobile application, with a focus on clean UI design, intuitive user experience, and functional interactivity. The goal of the app is to allow users to easily access their account information, perform transactions, and manage their finances directly from their mobile devices.

Core Features

The application includes the following key screens and components:

Login Screen:
Allows users to securely access their account using a username and password. Basic form validation ensures fields are not left empty.
Dashboard:
Serves as the landing page after login. Displays account information, shortcuts to key services (e.g., transfer, bills), and quick access to other pages via bottom navigation.
Transfer of Funds Page:
Enables users to transfer funds to other Ecobank accounts, local banks, or mobile money wallets. Includes a tab layout with options for transfer and request.
Bills Payment Page:
Provides a list of utility service providers (e.g., water, electricity, DSTV) and a simple payment interface.
Accounts & Balances Page:
Shows a summary of all account types and their respective balances. Includes styling to indicate account types and formats.
Transaction History Page:
Displays a list of recent transactions using an in-memory Transaction model class. Each item shows transaction name, date, and amount (color-coded based on debit/credit).
How to Use the MyBank App (App Flow)

This section explains how a typical user can navigate and interact with the mobile banking app:

Launch the App
When the app opens, you will first see a splash screen displaying the bank’s logo and a message confirming a secure connection.
Login Screen
Enter your username and password in the provided fields.
Tap the “Login” button to proceed.
(Note: This demo does not verify credentials — it demonstrates form validation and navigation.)
Dashboard/Home Screen
View your account name, account number, and options like “Show My Balance.”
Access quick actions like:
Airtime/Data
Transfer
Pay Bill
EcobankPay
Scroll down to see options like inviting friends and sharing the app.
Bottom Navigation Bar
Navigate between different core pages using the icons at the bottom:
Home – Account summary and quick links
Cards – Access virtual, debit, or credit card services
Help – Chat and contact support
Notifications – View recent alerts or messages
More – Access additional features (placeholder)
Transfer Funds
Tap “Transfer” from the Dashboard or navigation
Use the tab bar to switch between:
Transfer: Choose where to send funds (e.g., Mobile Money, Local Banks)
Request: Placeholder for future feature
Pay Bills
Access the Bills Payment screen
Select from a list of bill types (e.g., Water, Electricity, Internet)
Tap to simulate payment process
Accounts & Balances
See a summary of all available account types
Check current balances and basic account details
Transaction History
View a list of recent transactions (stored in-memory for demo purposes)
Includes details like transaction title, date, and amount (color-coded for debit/credit)
Challenges Faced & Lessons Learned

Recreating the look and feel of a real banking app required close attention to detail and UI hierarchy
Managing state using setState() helped reinforce understanding of how Flutter widgets rebuild and update
Named routing improved understanding of Flutter navigation structure
Time management was essential, and breaking the work into modular files improved productivity
Ensured all pages work seamlessly with no runtime errors
