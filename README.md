# Radium patch for macOS Catalina

[Radium](http://catpigstudios.com/) macOS app no longer works on macOS 10.15 Catalina and this repository provides a fix for it.

## I want to use the patch

1. You have to own the Radium app first. If you don't, [buy it](https://apps.apple.com/us/app/radium-perfect-internet-radio/id597611879?mt=12) in the Mac App Store. Make sure Radium.app is in the `/Applications` folder.
2. [Download the RadiumFixLauncher](https://github.com/zvonicek/radium-fix-launcher/releases/download/1.0/RadiumFixLauncher.app.zip)
3. Extract the RadiumFixLauncher.app and use it when you want to open Radium on your computer.
4. Enjoy!

## I want to know how this works

- Read my article about building the patch
- Explore the [/RadiumFix](https://github.com/zvonicek/radium-fix-launcher/blob/master/RadiumFix/) folder that contains the dynamic framework that is injected into the app
- Explore the [/RadiumFixLauncher](https://github.com/zvonicek/radium-fix-launcher/tree/master/RadiumFixLauncher) folder with a launcher macOS app that injects the library
- Clone the repo and run the "Radium" scheme to get the debugger attached to the Radium process directly.
