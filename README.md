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

## Change Properties

1. Launch `ThenGeneratorApp`
2. Find `UIKit` class and turn on/off switch

<img src="./.github/images/property.png">

## Demo

<table>
<tr>
<th>Single</th>
<th>Multiline</th>
</tr>
<td>
<img src="./.github/images/single.gif">
</td>
<td>
<img src="./.github/images/multiLine.gif">
</td>

</table>

## Contribution

If you find a bug or want to add a new property, find `XXXXModel.swift` in Models Folder and fix or append property.
And find `XXXXComponent.swift` in ComponentViews Folder and add `SwitchView` with new property.

## References

- [ViewGenerator](https://github.com/funzin/ViewGenerator)
