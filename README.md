# Meno Mood Hack App
**PROTOTYPE**
Control **Menopause mood swings**. Based on meditation and music techniques.
This app and repo was created for the [Hacking Menopause by Hackster.io](https://www.hackster.io/contests/aarpmenopause) competition.

Am a Indian kid just started to learn develop mobile applications. So am more like a software guy than hardware. Even though Menopause is a new thing to me and only for girls or women I have a little sister and mother to take care of! So It makes sense for me to contribute with the knowledge I have about App Development and little bit of Machine Learning (ML). Being a Software kid I couldnt think of any Hardware solutions and I guess there are many Hardware developers out there making some amazing solution for Menopause.

After watching the "AARP Hacking Menopause Webinar" I felt that that I could solve some Menopause symptoms like anxiety and stress using mobile applications. This is my first ever mobile application so suggestions are welcomed.
This project guide will take you through the whole app structure from scratch with understanding of a Flutter App development and Menopause. symptoms.

## Menopause
- Menopause is the time that marks the end of your menstrual cycles. It's diagnosed after you've gone 12 months without a menstrual period.
- Menopause can happen in your 40s or 50s, but the average age is 51 in the United States.
- Menopause is a natural biological process. Menopause is a stage of life that nearly every woman will experience. Yet, this very natural phase in a woman’s life is often not discussed nor well understood.
- One in three American women are currently in a phase of menopause 20% of the American workforce is currently experiencing menopause.
- Very few women use hormone replacement therapy (HRT).
- Perimenopause is the 4-10 years leading up to that point can bring a variety of disruptive symptoms to a woman. In the postmenopausal period, some symptoms can diminish, while new ones appear.
- Hot flashes are the most known symptom of menopause. Did you know there are over 35 other symptoms that women might experience during the three phases of menopause.
**Hot Flashes** - A sudden wave of mild or intense body heat caused by rushes of hormonal changes resulting from decreased levels of estrogen. Hot flashes can occur at any time and may last from a few seconds to a half-hour. They are due to blood vessel opening and constricting and a symptom of menopause.

## How can apps help
Some points to note for a person not in good health - Music, Meditation, control over sleep and fluid intake.
- Music can help a lot in concentration and help in distracting you from thinking more and more about your menopause issues. So during the project we will be including a YouTube plugin to randomly play some concentration music by Brain.fm.
- Reminders can help in reminding of fluid intake which is one of keeping menopause in control. Lack of body fluids can cause dizziness which could case harm to your productivity or work assigned.
- Activity recorder can record activities such as Hot flashes, Meal intake, sleep, exercise, moods, symptoms, periods, dizziness. These data collected can be submitted to a doctor for further diagnoses.
- Machine Learning can help in predicting hot flash and periods* based on the data collected everyday. We can run basic ML algorithms such as RandomForest and LinearRegression to get good results. We don't need any complex custom algorithms as far as the data is concerned. (Data on menopause which we collect during app usage seems to be relatable in some way or the other)
- Meditation can come really handy to control constant mood swings. The most simple breath in breath out meditation is a very effective method for stressed out people while it does take some time to get used to even such simple meditation techniques.
- Voice assistant can help you get your work done without touching your phone. Using STT (speech to text) and TTS(text to speech) modules for reminding you of task, reading you out good blogs on menopause to make you feel good. As of now google keyboards comes with voice features so you fill any input text area with your voice.
- Quickly connect with nearby doctors in case of emergencies and any problems.

## Why Flutter over other Android Frameworks?

## What my App does?

## App structure

## Features

## Code explanation
**Packages used** (https://pub.dev/)
- [curved_navigation_bar]()
- [dio]()
- [flutter_web_browser]()
- [path_provider]()
- [youtube_player_flutter]()
- [flutter_native_splash]()

## What I learned

## Challenges Faced

## TODO
- iOS binaries
- Publish to Play Store and App Store
- Voice Assitant in App for touchless interface
- Smoother UI
- Automatic blog update
- OTA update
- Replace video player with Music player which plays from YouTube
- More Mozart Effect Music
- Decrease Splash Screen delays
- Fetch blog JSON file from firebase (as of now its fetches from this repo!)

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
$ flutter clean
$ flutter run
```

### Binaries (Build using 'flutter build apk --split-per-abi')
As of now, I couldnt afford to publish in a App Store, but the binaries are available for you to download and install.
All the latest updated binaries are stored in [binaries](/binaries) folder with the architecture name as tail of the filename.

## Notes
- I learned Flutter from [Introduction to Flutter Development Using Dart course by The App Brewery created in collaboration with the Google Flutter team](https://www.appbrewery.co/p/intro-to-flutter)
- Am not any sort of advertiser of brain.fm. I have got no deal with brain.fm or any of there products. I have experienced it and has been effective throughout the project development cycle. There are more such music apps for concentration building you can try them out.
- Flowcharts were made using [Darw.io](https://www.draw.io/), a desktop version is available too.
