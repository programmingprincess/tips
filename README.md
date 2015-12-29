# Pre-work - Tips

*Tips* is a tip calculator application for iOS.

Submitted by: *Jiaqi Wu*

Time spent: *3* hours spent in total

## User Stories

The following **required** functionality is complete:
* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [X] Settings page to change the default tip percentage.
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] Slider replaces segmented control to add freedom in chosing a specific tip percentage

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/eJ4c7Ik.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Because I used a slider and float values were introdcued, switching back and forth between data types (trying to make flaots and doubels and integers compatible) became a problem, and caused some number mismatches. (Sometimes, when the default percentage was 18%, the main page's tip slider would read 18%, and so forth). This was fixed by organizing the code and commenting important steps. 

## License

Copyright [2015] [Jiaqi Wu]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.