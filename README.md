# SpaceX Mission Assignment

## How to run the project locally

1. Make sure that you have rbenv installed on your machine.
1. Install the version of ruby noted in .ruby_version in the project root by running `rbenv install` in the root of the project in your preferred Terminal
1. Install Apollo GraphQL using CocoaPods by running `bundle && bundle exec pod install` from the project root.
1. Open SpaceXMissionTracker.xcworkspace in Xcode 13. (The project was created with Xcode 13.3.1.)
1. Run the project on an iOS Simulator using the Xcode 'Play' button (used iPod Touch 7th generation running iOS 15.4).

## Running into issues

* If you have issues running `pod install`, try running `rbenv rehash` in the repo root in your terminal session to make sure that the `pod` command is properly picked up.
* Double check that your Xcode signing identity is set to None in case Xcode is trying to build against an existing signing certificate.
