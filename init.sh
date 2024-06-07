########
# This is the init file for .devcontainer
# You should not use this or try to change this.
# Otherwise, the .devcontainer may filed to run correctly.
########

#!/bin/bash

git config --global --add safe.directory ~/flutter 
git config --global --add safe.directory /workspaces/flutter_web
# git config --global --add safe.directory /usr/bin/flutter 
dart pub global activate rps 
flutter pub get
flutter