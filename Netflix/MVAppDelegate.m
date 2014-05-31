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
	NSURL *url = [NSURL URLWithString:@"http://www.netflix.com"];
	NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
	[[self webView] setCustomUserAgent:@"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.76.4 (KHTML, like Gecko)"];
	[[[self webView] mainFrame] loadRequest:urlRequest];


}
- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication {
	return YES;
}
@end
