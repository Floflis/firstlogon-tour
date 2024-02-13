# First logon Tour

A Flutter application designed to provide a first-logon tour/wizard for Ubuntu and other Debian-based distros; also, a replacement to the [ubuntu-welcome](https://github.com/canonical/ubuntu-welcome) app, running on its place and later calling it on Ubuntu-based distros.

It uses [this CLI as backend](https://github.com/Floflis/firstlogon-tour_cli).

## Currently supported:

- Ubuntu 23+ (or older; untested)
- Linux Mint 21.1+ Cinnamon (or older; untested)
- Ubuntu Cinnamon 22+ (or older; untested)
- Floflis
- more soon. PRs both to this GUI [and its backend](https://github.com/Floflis/firstlogon-tour_cli) are welcome!

## Screenshots

### Multi-distro

<table>
<tbody>
<tr>
<td><img title="Ubuntu" alt="Ubuntu" src="./screenshots/wrong timestamp, using BIOS time/Ubuntu/Screenshot from 2023-09-16 20-52-37.png"/> Ubuntu</td>
<td><img title="Linux Mint" alt="Linux Mint" src="./screenshots/wrong timestamp, using BIOS time/Mint/Screenshot from 2023-09-16 20-13-13.png"/> Linux Mint</td>
<td><img title="Ubuntu Cinnamon" alt="Ubuntu Cinnamon" src="./screenshots/wrong timestamp, using BIOS time/UCR/Screenshot from 2023-09-16 19-47-12.png"/> Ubuntu Cinnamon</td>
</tr>
<tr>
<td><img title="Floflis" alt="Floflis" src="./screenshots/Floflis/Screenshot from 2023-09-14 06-08-29.png"/> Floflis</td>
</tr>
</tbody>
</table>
<!-- DivTable.com -->

First logon welcome screen.

### Details

<img src="./screenshots/Screenshot from 2023-09-17 04-14-08.png"/>

Set cursor color (black, white).

<img src="./screenshots/Screenshot from 2023-09-17 04-14-12.png"/>

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
git clone https://github.com/Floflis/firstlogon-tour.git firstlogon_tour
```
2. Navigate into the project directory
```bash
mv firstlogon-tour firstlogon_tour && cd firstlogon_tour
```
3. Get the dependencies and prepare for Linux build
```bash
sh init.sh
```
4. Compile the application
```bash
sh build.sh
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

- [Daniella Mesquita](https://danimesq.com) and [Floflis DAO](https://floflis.com)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

- Flutter documentation
- Dart documentation
