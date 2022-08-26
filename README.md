# teaminterval machine test

 this is a flutter project for [teteaminterval.com](https://www.teaminterval.in/)'s machine test

## Task 
- Login Screen
- Home Screen
- Listing Screen
- Search option

# Techstacks I used

used BLOC as statemanagement. it's eeasy to implement compare to other statemanagements
other packaged i used

- injectable - Dependency injection in Flutter is a technique in which one object supplies the dependencies of another object
- freezed - Freezed is a code-generation package 
- getit - This is a simple Service Locator for Dart and Flutter
- json_serializable - having an external library generate the encoding boilerplate
- dio - it provides a powerful HTTP client for Dart and Flutter
- dartz - Functional programming in Dart



## What's I Done

- Login Screen 

login screen is finished as per the task. Created a user login screen. user can login with username and password. when clicking login button if username and password are same it'll navigate to the home screen, else it'll show an error
implemented password hide (obscureText) option.
will show a snackbar to show the user if anything wrong happened

- Home Screen 

Integrated the API, and fetches the data that needed to list in the application. all working well.
used injectable and get it to make it smooth and scalable

- Search Option  

implemented search query 

## Bugs and Problems

on Search Option the data is fetching randomly, not as per the query, trying to fix that. 

Hero widget is not working too. 

#### trying to fix those bugs , but due to time limit pushing this code to repo. will  find and fix those bug and will push the code. 

## Run The Project

Go to terminal and run the command
> code .

> flutter emulators --launch < emulator id >

> flutter run
