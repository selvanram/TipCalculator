# Pre-work - Tip Calculator

Tip Calculator is a tip calculator application for iOS.

Submitted by: Vijay Ram

Time spent: 3 hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [X] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

![](https://github.com/selvanram/TipCalculator/blob/master/tipCalculatorDemo.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:**
What I enjoy about the iOS platform so far is the ease of thinking of your application in terms of its UI. The storyboard view allows the developer to consider and manifest the user interactions along with the experience before coding the wiring. In this way, it seems to facilitate a designer's mindset. The statically typed nature of the swift language is a new paradigm for me coming from mostly ruby and javascript development, but I'm looking forward to sharpening this way of understanding a more rigid enforcement of types. 

An outlet in an iOS view is similar to the way controllers expose data to their associated views in web MVC frameworks. I can define an outlet for a button or label, for example it's name or value, and have that value reflected in the views. An action in iOS helps with interacting with those elements. I can take action on a button or input field, and pass messages to some associated handler that will do something about the interaction. 

Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:** [Enter your answer here in a paragraph or two].




## License

    Copyright 2017 Vijay Selvan Ram

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

