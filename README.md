# MS_FormControls

[![CI Status](http://img.shields.io/travis/manojshrestha/MSFloatingButton.svg?style=flat)](https://travis-ci.org/manojshrestha/MSFloatingButton)
[![Version](https://img.shields.io/cocoapods/v/MSFloatingButton.svg?style=flat)](http://cocoapods.org/pods/MSFloatingButton)
[![License](https://img.shields.io/cocoapods/l/MSFloatingButton.svg?style=flat)](http://cocoapods.org/pods/MSFloatingButton)
[![Platform](https://img.shields.io/cocoapods/p/MSFloatingButton.svg?style=flat)](http://cocoapods.org/pods/MSFloatingButton)

## Example
To run the example project, clone the repo, and run `pod install` from the Example directory first.
First control in this library to make your UX better is dropdown which is not present in iOS UIKit. 

## Steps to use MSDropDown
1. Put UIView in your UI. Convert its class to MSDropDown.
2. Set keyvalue of MSDropDown with array of model: [KeyValueModel]
3. Set isMultiSelect = true for multiselect and false for single select.
4. Use MSDropDownDelegate Protocol in your view ans set delegate of MSDropDown View.
5. Dropdown returns answer in function -> func dropdownSelected(tagId: Int, answer: String, value: Int, isSelected: Bool)

## Requirements

## Installation

MS_FormControls is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MS_FormControls'
```

## Author

Manoj Shrestha

## License

MSFloatingButton is available under the MIT license. See the LICENSE file for more info.
