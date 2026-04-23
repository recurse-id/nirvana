#!/bin/bash
set -e
for app in pt-checkin clear1 health-ai; do
  cd "$app" && npm install && npm run build && cd ..
done

for app in pt-checkin clear1; do
  mkdir -p "dist/$app"
  cp -r "$app/dist/"* "dist/$app/"
done

mkdir -p "dist/amazon"
cp -r "health-ai/dist/"* "dist/amazon/"
