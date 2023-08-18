# NavigationSplitView Issue

This is a demo project showcasing what looks like an issue with the NavigationSplitView component on visionOS.

It is possible that this is not an actual issue, but more so, my own misunderstanding of how this component should be used in this platform.

## Here's my expectation:

When running a NavigationSplitView with double column on Apple Vision Pro, there should be a control available like in iPadOS to collapse or open the sidebar. When resizing the window, I should be able to define which view collapses by using the `preferredCompactColumn` parameter.

## What is currently happening:

There's no default sidebar control, and when the window gets resized, the detail view is always the one getting displayed. 

## Reproduction steps

- Build this sample project for Apple Vision Pro Simulator.
- Resize the window and observe the behavior of the double column NavigationSplitView.

## Notes

- This issue was diagnosed using visionOS SDK Beta 2. 
- I was able to reproduce this issue on an actual Apple Vision Pro during a lab.
- This issue is also reproducible in the visionOS Simulator in Xcode Beta 6.
- This issue could be related to FB12997837.
