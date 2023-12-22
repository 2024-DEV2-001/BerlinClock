# BerlinClock - iOS

The Mengenlehreuhr, or Berlin clock, consists of 24 lights which are divided into one circular blinking yellow light on top to denote the seconds, two top rows denoting the hours and two bottom rows denoting the minutes.

The clock is read from the top row to the bottom. The top row of four red fields denote five full hours each, alongside the second row, also of four red fields, which denote one full hour each, displaying the hour value in 24-hour format. The third row consists of eleven yellow-and-red fields, which denote five full minutes each (the red ones also denoting 15, 30 and 45 minutes past), and the bottom row has another four yellow fields, which mark one full minute each. The round yellow light on top blinks to denote odd- (when lit) or even-numbered (when unlit) seconds.

The app has been built using TDD practice, the MVVM architectural pattern, SwiftUI 5.9, Combine, Xcode 15.1 and iOS 17. No dependencies were used.

## Prerequisites

- Xcode
- iOS simulator(iPhone/iPad), or if you have Apple Silicon you will be able to run without downloading simulators, and it'll run in the iPad dimensions

## How to run

- Download/clone the main branch of this project
- Open BerlinClock.xcodeproj using Xcode
- Select target simulator(see prerequisites) and click Product-Run(or CMD+R)
- To run the automated tests, click Product-Test(or CMD+U)

## Useful links

Complete description - http://agilekatas.co.uk/katas/BerlinClock-Kata
https://github.com/stephane-genicot/katas/blob/master/BerlinClock.md

![Simulator Screenshot - iPhone 15 Pro - 2023-12-22 at 18 26 21](https://github.com/2024-DEV2-001/BerlinClock/assets/154593116/60c3c172-03d6-40d3-8ecf-48b7e60441f4)
