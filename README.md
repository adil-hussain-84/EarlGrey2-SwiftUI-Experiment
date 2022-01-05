# About

This Xcode project experiments with using EarlGrey 2 to test a SwiftUI application. It has been built by following the EarlGrey 2 [setup guide](https://github.com/google/EarlGrey/blob/earlgrey2/docs/setup.md). It adds EarlGrey 2 to an iOS UI Testing Bundle.

The main takeaway from this project for now is that it's not possible to perform text assertions on views defined by means of SwiftUI's [Text](https://developer.apple.com/documentation/swiftui/text) view. I have reported an issue about this in the EarlGrey 2 repository [here](https://github.com/google/EarlGrey/issues/1679).

# Setup

This project assumes that the `EarlGrey` folder which contains the `EarlGrey.xcodeproj` file exists at the same level as the folder which contains this project's `EarlGrey2Experiment.xcodeproj` file. So if the `EarlGrey2Experiment.xcodeproj` file is located in the `Repositories/EarlGrey2Experiment` folder, for example, then the `EarlGrey.xcodeproj` file is to be located in the `Repositories/EarlGrey` folder.
