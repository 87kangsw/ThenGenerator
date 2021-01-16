# ThenGenerator

<p align=center>
<a href="https://apps.apple.com/us/app/thengenerator/id1499993324?mt=12&amp;itscg=30200&amp;itsct=apps_box" style="width: 170px; height: 170px; border-top-left-radius: 22%; border-top-right-radius: 22%; border-bottom-right-radius: 22%; border-bottom-left-radius: 22%; overflow: hidden; display: inline-block; vertical-align: middle;"><img src="./.github/images/icon_512x512.png" alt="ThenGenerator" style="width: 170px; height: 170px; border-top-left-radius: 22%; border-top-right-radius: 22%; border-bottom-right-radius: 22%; border-bottom-left-radius: 22%; overflow: hidden; display: inline-block; vertical-align: middle;"></a>

</p>

## Overview

ThenGenerator is Xcode Source Editor Extension for [Then](https://github.com/devxoul/Then)

## Install

<a href="https://apps.apple.com/us/app/thengenerator/id1499993324?mt=12&amp;itsct=apps_box&amp;itscg=30200" style="display: inline-block; overflow: hidden; border-top-left-radius: 13px; border-top-right-radius: 13px; border-bottom-right-radius: 13px; border-bottom-left-radius: 13px; width: 250px; height: 83px;"><img src="https://tools.applemediaservices.com/api/badges/download-on-the-mac-app-store/black/en-US?size=250x83&amp;releaseDate=1610668800&h=b1b571a8554d47f187619067dd9c33a0" alt="Download on the Mac App Store" style="border-top-left-radius: 13px; border-top-right-radius: 13px; border-bottom-right-radius: 13px; border-bottom-left-radius: 13px; width: 250px; height: 83px;"></a>

## Enviroment

- macOS 11.0 (Big Sur)
- SwiftUI
- UserDefaults

## How to use

1. Install ThenGenerator
2. Enable Xcode Source Editor

   - `` -> `System Preferences` -> `Extensions`
   - Check `ThenGenerator`

   <img src="./.github/images/systempreference.png">

3. Input variable name for Generate code. Without `UI` prefix.
4. If you want to create a UILabel class with variable name `repoNameLabel`, you input text `VariableName + Label`
5. Select variable name
6. `Editor` -> `ThenGenerator` -> `Generate Then Code`

   <img src="./.github/images/manual.png">

## Use Shortcut

1. Xcode Preferences.. (`⌘` + `,`)
2. Key Bindings
3. Search ThenGenerator
4. Add Shortcut

<img src="./.github/images/keybinding.png">

<table>
<tr>
<th>Parallax</th>
<th>ZoomInOut</th>
<th>RotateInOut</th>
<th>Cards</th>
</tr>
<tr>
<td><img src="http://i.imgur.com/v8JuRYj.gif"/></td>
<td><img src="http://i.imgur.com/lLooXQ7.gif"/></td>
<td><img src="http://i.imgur.com/lCNh5mg.gif"/></td>
<td><img src="http://i.imgur.com/joA1emB.gif"/></td>
</tr>
<tr>
<th>CrossFade</th>
<th>Cube</th>
<th>Page</th>
<th></th>
</tr>
<tr>
<td><img src="http://i.imgur.com/U1hOKYo.gif"/></td>
<td><img src="http://i.imgur.com/897mcdm.gif"/></td>
<td><img src="http://i.imgur.com/HRcvRIV.gif"/></td>
<td></td>
</tr>
</table>

## Example

To run the example project, clone the repo, and start `iOS Example` in Xcode.

## Requirements

- iOS 9.0+

## Installation

### CocoaPods

To integrate AnimatedCollectionViewLayout into your Xcode project using CocoaPods, specify it in your `Podfile`:

For Swift 4.2 or above:

```ruby
pod 'AnimatedCollectionViewLayout'
```

For Swift 4.1 or below:

```ruby
pod 'AnimatedCollectionViewLayout', '~> 0.3.0'
```

### Carthage & SPM

Carthage and Swift Package Manager are also supported.

## Usage

### Get Started

Import the library where you want to use it. Create a `AnimatedCollectionViewLayout` object, set its `animator` and assign it to your `UICollectionView`.

```swift
import AnimatedCollectionViewLayout

// ...

let layout = AnimatedCollectionViewLayout()
layout.animator = ParallaxAttributesAnimator()
collectionView.collectionViewLayout = layout
```

### Customization

Most of the built-in animators work best in **Paging** mode and they have additional parameters that you can tweak for better transitions.
You can also write your own animators by implementing the protocol `LayoutAttributesAnimator`.

## Author

[Jin Wang](https://twitter.com/jinw1990)

## License

AnimatedCollectionViewLayout is available under the MIT license. See the LICENSE file for more info.
