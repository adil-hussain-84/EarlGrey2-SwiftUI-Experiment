# About

This Xcode project is an attempt at following the EarlGrey [setup guide](https://github.com/google/EarlGrey/blob/earlgrey2/docs/setup.md) in order to add EarlGrey 2 to an iOS UI Testing Bundle.

I was able to clone the `earlgrey2` branch of the [EarlGrey repository](https://github.com/google/EarlGrey), download its dependencies by executing the `Scripts/download_deps.sh` script, and build each of the targets in the EarlGrey Xcode project.

Next, I was able to add the `libTestLib.a` library to my UI Testing Bundle's `Link Binary With Libraries` build phase, add the `-ObjC` linker flag to its build settings and still be able to build it successfully.

However, when I then proceed to add the EarlGrey directory (the directory containing the `EarlGrey.xcodeproj` file) to my UI testing target's `User Header Search Paths` and try again to build it, I enounter a `Redefinition of module 'AppFramework'` error.

Note that this project assumes that the `EarlGrey` folder which contains the `EarlGrey.xcodeproj` file exists at the same level as the folder which contains this project's `EarlGrey2Experiment.xcodeproj` file. So if the `EarlGrey2Experiment.xcodeproj` file is located in the `Repositories/EarlGrey2Experiment` folder, then the `EarlGrey.xcodeproj` file is located in the `Repositories/EarlGrey` folder.
