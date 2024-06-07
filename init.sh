#!/bin/bash

git config --global --add safe.directory ~/flutter 
# git config --global --add safe.directory /usr/bin/flutter 
dart pub global activate rps 
flutter pub get
flutter