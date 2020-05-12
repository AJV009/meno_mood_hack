# Meno Mood Hack App (Prototype Stage!)
Control **Menopause mood swings**. Based on meditation and music techniques.
This app and repo was created for the [Hacking Menopause by Hackster.io](https://www.hackster.io/contests/aarpmenopause) competition.

![Quick Pic!](/netData/work1.jpg)

## TODO:
- iOS binaries (need a MacBook for iOS Development)
- Publish to Play Store and App Store
- Voice Assitant in App for touchless interface
- Smoother UI, Auto blog update, OTA update
- Replace video player with Music player which plays from YouTube and More Mozart Effect Music
- Decrease Splash Screen delays and add a image
- Replace JSON with Firebase
- Use simple on-device SVM for prediction of other symtoms and complexities. (ML)
- Forums support (discuss and share experencies)
- Voice analysis using Deep Learning (To detect emotion or feelings)

## Build and Install

### My PC build Setup (HP EliteBook 8470p)
- 8GB RAM, 500GB HDD
- Intel(R) Core(TM) i5-3320M CPU @ 2.60GHz, 2601 Mhz, 2 Core(s), 4 Logical Processor(s)

### Flutter version details (from 'flutter doctor')
- Flutter (Channel stable, v1.17.0, on Microsoft Windows [Version 10.0.18363.778], locale en-US)
- Android toolchain - develop for Android devices (Android SDK version 29.0.2)
- Android Studio (version 3.6), Flutter plugin version 45.1.1, Dart plugin version 192.7761
- VS Code, 64-bit edition (version 1.44.2)

### Build Project from source code
Being a Flutter code it can be compiled for both Android and iOS. (For iOS some changes have to be made in different files)
Hope you have already setup flutter sdk on whatever editor you are using [VS-Code](https://flutter.dev/docs/get-started/editor?tab=vscode), [Android Studio](https://flutter.dev/docs/get-started/editor?tab=androidstudio) or [Emacs](https://flutter.dev/docs/get-started/editor?tab=emacs)

Clone this project and build using flutter!
```shell
$ git clone https://github.com/AJV009/meno_mood_hack
$ cd /meno_mood_hack
$ flutter pub get
$ flutter clean
$ flutter run
```

### Binaries (Build using 'flutter build apk --split-per-abi')
As of now, I couldnt afford to publish in a App Store, but the binaries are available for you to download and install.
All the latest updated binaries are stored in [binaries](/binaries) folder with the architecture name as tail of the filename.

## Notes
- This project will remain Open Source forever! **(I LOVE OS)**
- **Being my first Flutter project I'll keep on completing the TODO list as they are easy just bit of time consuming because am fairly new to mobile development. So watch and star this repository for updates. Also this project will be a nice addition to my resume.**
