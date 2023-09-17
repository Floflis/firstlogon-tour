flutter pub get
flutter create --platforms=linux .
dart pub global activate flutter_to_debian
export PATH="$PATH":"$HOME/.pub-cache/bin"
mkdir include

git clone https://github.com/Floflis/linux-icon-getter.git include/linux-icon-getter
chmod +x include/linux-icon-getter/linux-icon-getter

git clone https://github.com/Floflis/firstlogon-tour_cli.git include/firstlogon-tour_cli
chmod +x include/firstlogon-tour_cli/core.sh
