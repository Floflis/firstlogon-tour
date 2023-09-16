# Ubuntu Cinnamon first logon Tour

This is a Flutter application designed to provide a first-logon tour/wizard for Ubuntu and other Linux distros. It leverages external executables, which can be Rust programs or Bash script executables.

Currently supporting only Cinnamon as DE, but planned to add individual cases for the most popular distros and DEs.

## Screenshots

### Multi-distro

| Ubuntu                                                                                                      |
|:-----------------------------------------------------------------------------------------------------------:|
| ![](./wrong timestamp, using BIOS time/Screenshots/Ubuntu/Screenshot from 2023-09-16 20-52-37.png "Ubuntu") |
| Linux Mint                                                                                                    |
|:-------------------------------------------------------------------------------------------------------------:|
| ![](./wrong timestamp, using BIOS time/Screenshots/Mint/Screenshot from 2023-09-16 20-13-13.png "Linux Mint") |
| Ubuntu Cinnamon                                                                                                   |
|:-----------------------------------------------------------------------------------------------------------------:|
| ![](./wrong timestamp, using BIOS time/Screenshots/UCR/Screenshot from 2023-09-16 19-47-12.png "Ubuntu Cinnamon") |

### On Floflis

<img src="./screenshots/Screenshot from 2023-09-14 06-08-29.png"/>

First logon welcome screen.

#### Details

<img src="./screenshots/Screenshot from 2023-09-14 06-08-34.png"/>

Set cursor color (black, white).

<img src="./screenshots/Screenshot from 2023-09-14 06-08-37.png"/>

Set theme color (dark, light, normal).

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Flutter SDK: Make sure you have Flutter installed on your machine. If not, you can get it from [here](https://flutter.dev/docs/get-started/install).

#### Additional

- Dart SDK: Dart comes with Flutter. If you've installed Flutter, you probably have Dart. If not, get it from [here](https://dart.dev/get-dart).
- Linux: This application is designed to be compiled to Linux as a native application.

### Installing

1. Clone the repository
```bash
git clone https://github.com/floflis/ubuntutour.git
```
2. Navigate into the project directory
```bash
cd ubuntutour
```
3. Get the dependencies and prepare for Linux build
```bash
./init.sh
```
4. Compile the application
```bash
flutter build linux
```
5. The executable will be located in the `build/linux/x64/release/bundle` directory.

## Running the tests

To run the tests, use the following command:
```bash
flutter test
```

## Built With

- [Flutter](https://flutter.dev/) - The UI toolkit used
- [Dart](https://dart.dev/) - The language used

## Authors

- Daniella Mesquita/Floflis DAO

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

- Flutter documentation
- Dart documentation
