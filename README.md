
# Flutter Rick and Morty Character Search

This project is a Flutter application that allows users to search and view details of characters from the Rick and Morty series using the Rick and Morty API. The application implements a custom `SearchDelegate` to perform searches and display results intuitively.

## Features

- Character search by name.
- Display details of selected characters.
- API calls using the `dio` package.
- **Theme Management**: Support for light and dark themes.


![IMG-20240723-WA0029](https://github.com/user-attachments/assets/98679dbc-bc05-475b-8ca6-716d2029f44c)
![IMG-20240723-WA0028](https://github.com/user-attachments/assets/c5076922-ed7b-46c8-b23b-90218fdc9d4b)
![IMG-20240723-WA0025](https://github.com/user-attachments/assets/bade7940-8afb-41a0-b820-8190488625b5)
![IMG-20240723-WA0027](https://github.com/user-attachments/assets/18e1f4ad-9b1d-43c5-a868-10cbda5d0bcf)
![IMG-20240723-WA0026](https://github.com/user-attachments/assets/e9e6a449-5869-4c8f-af24-807b72256350)






## Technologies Used

### Flutter

Flutter is an open-source framework developed by Google for creating native compiled applications from a single codebase. It can be used to develop mobile, desktop, and web applications.

- **Fast Development**: With Flutter, you can quickly develop applications with a rich user interface.
- **Native Performance**: Native performance and the ability to create native UI.
- **High-Quality Widgets**: Use a wide variety of widgets to build modern and customizable UIs.

### Dio

[Dio](https://pub.dev/packages/dio) is a powerful and easy-to-use HTTP client for Flutter. It offers a wide range of features such as interceptors, data formatting, and error handling.

- **Interceptors**: Manipulate requests and responses before they are sent or received.
- **FormData**: Easy handling of file uploads.
- **Request Cancellation**: Ability to cancel requests at any time.
- **Error Handling**: Structured error and exception handling.

## Installation

1. Clone the repository:
   ```bash
   https://github.com/JoelPulla/Flutter-App-Rick-And-Morty-Api.git
Navigate to the project directory:
bash
Copiar código
cd rick_and_morty_search
Install the dependencies:
bash
Copiar código
flutter pub get
Usage
Run the application:
bash
Copiar código
flutter run
Press the search icon at the top of the screen.
Enter the name of a character and select a result to view the details.
Switch between light and dark themes from the device settings.
Self-Taught Developer
I am a self-taught developer passionate about learning and creating innovative solutions. Through self-education, I have acquired skills in mobile application development using Flutter and other frameworks and technologies. My focus on self-discipline and curiosity has enabled me to build projects that solve real problems and add value.

Future Improvements
The application is functional, but there is always room for improvement. Some ideas for future versions include:

Pagination of Results: Implement pagination to handle large datasets.
Favorites: Add the ability to mark characters as favorites and store them locally.
Advanced Filters: Allow searching by additional criteria such as species, status, gender, etc.
Internationalization: Support for multiple languages.
Animations: Enhance the user experience with smoother transitions and animations.
Contributions
Contributions are welcome. If you have any ideas, find any bugs, or want to improve any features, feel free to open an issue or submit a pull request.

License
This project is licensed under the MIT License. For more details, see the LICENSE file.
