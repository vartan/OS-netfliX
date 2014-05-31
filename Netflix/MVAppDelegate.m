//
//  MVAppDelegate.m
//  Netflix
//
//  Created by Michael Vartan on 5/30/14.
//  Copyright (c) 2014 Michael Vartan. All rights reserved.
//

#import "MVAppDelegate.h"

@implementation MVAppDelegate


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Netflix URL
	NSURL *url = [NSURL URLWithString:@"http://www.netflix.com"];
	
	// Create URL request for webView
	NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
	
	// Trick netflix into believing we are safari (taken from Safari 7.0.4)
	NSString *userAgent = @"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.76.4 (KHTML, like Gecko)";
	[[self webView] setCustomUserAgent:userAgent];
	
	// Load netflix.com
	[[[self webView] mainFrame] loadRequest:urlRequest];
}

/**
 * Force app to close when the window is closed. No reason to have to "quit" it.
 */
- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication {
	return YES;
}
@end
