//
//  AppDelegate.m
//  RadiumFixLauncher
//
//  Created by Petr Zvonicek on 2020-05-03.
//  Copyright © 2020 Petr Zvoníček. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    NSString *radiumPath = @"/Applications/Radium.app/Contents/MacOS/Radium";

    if([[NSFileManager defaultManager] fileExistsAtPath:radiumPath]) {
        [self launchApplicationWithPath:radiumPath];
    } else {
        [self showAlertDialog];
    }
}

-(void)launchApplicationWithPath:(NSString *)inPath
{
    NSString *dyldLibrary = [[NSBundle bundleForClass:[self class]] pathForResource:@"libRadiumFix" ofType:@"dylib"];
    NSString *launcherString = [NSString stringWithFormat:@"DYLD_INSERT_LIBRARIES=\"%@\" \"%@\" &", dyldLibrary, inPath];
    system([launcherString UTF8String]);

    [[NSApplication sharedApplication] terminate:self];
}

-(void)showAlertDialog
{
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"Open in App Store"];
    [alert addButtonWithTitle:@"Exit"];
    [alert setMessageText:@"Radium.app was not found in Applications"];
    [alert setInformativeText:@"Would you like to install it from the App Store?"];
    [alert setAlertStyle:NSAlertStyleCritical];
    NSModalResponse response = [alert runModal];

    if (response == NSAlertFirstButtonReturn) {
        [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"macappstore://itunes.apple.com/app/id597611879?mt=12"]];
    }
    [[NSApplication sharedApplication] terminate:self];
}

@end
