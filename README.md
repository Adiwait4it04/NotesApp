Notes App:
This is a simple Flutter notes app that uses Firebase for data storage and authentication. The app allows users to create, read, update, and delete notes, as well as sign up and log in using their email and password.


Getting Started
To get started with the app, clone this repository:
git clone https://github.com/Adiwait4it04/NotesApp.git


Then, create a new Firebase project and add an Android app to it using the package name com.example.flutter_notes_app. Download the google-services.json file and place it in the android/app directory.

Next, enable email and password authentication in Firebase Authentication and create a Firestore database. In the Firestore database, create a collection called notes.

Finally, run the app using the following command:

flutter run


Features
The app has the following features:

User authentication: Users can sign up and log in using their email and password.
Notes CRUD: Users can create, read, update, and delete notes.
Real-time updates: The app uses Firebase to provide real-time updates to the user interface when notes are added, updated, or deleted.
Offline support: The app can be used offline, with changes synced to the server when the user comes back online.
Dependencies
The app uses the following dependencies:

firebase_auth: For user authentication.
cloud_firestore: For data storage.
provider: For state management.
fluttertoast: For displaying toast messages.
intl: For formatting dates.

Credits:

This app was created by Aditya Kumar Saha. If you have any questions or suggestions, please feel free to contact me.
