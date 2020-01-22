# Pre-work - *Tipper*

**Tipper** is a tip calculator application for iOS.

Submitted by: **Alex Phan**

Time spent: **9** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [ ] Settings page to change the default tip percentage.
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] Custom UIButton keypad with backspace and AC functionality.

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://g.recordit.co/XnRHtQGNIm.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [Recordit](https://recordit.co).

## Notes

Describe any challenges encountered while building the app.

I don't own a Apple computer, so I had to use the school workstations. But I did not know that the computer wipes itself even with login via Active Directory account, so I had to start over. I tried to follow the directions to [Xcode - Create a GitHub Repository](https://youtu.be/TS6qIbmBh-c), but ran into an issue: "reference 'refs/heads/master/' not found (-9)", and I couldn't commit or push. All it did was create an empty repository. So what I ended up doing was going into Terminal and going through the procedures to add an existing project to GitHub.

Another problem I had (and still have!) is not being able to get a [Editing Changed Event](https://youtu.be/fokeaXUdoz8?t=1090) for a UILabel, since I designed my Tip Calculator to not have a Keyboard Type. This causes my tip calculator to not be able to automatically update to the user's input. The gratuity and total calculations are only changed when the user interacts with the UISegmentedControl.

I wanted to design this calculator to be similar to the stock iOS Calculator App. Some future features I plan to implement:
* [ ] Calculations for multiple individuals for a shared bill.
* [ ] Image recognition feature to scan receipt. 
* [ ] Feature to charge friends through Venmo based on shared bill.
* [ ] Custom Gratuity feature to tip to the nearest whole number.

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
