//
//  MVAppDelegate.h
//  Netflix
//
//  Created by Michael Vartan on 5/30/14.
//  Copyright (c) 2014 Michael Vartan. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface MVAppDelegate : NSObject <NSApplicationDelegate>
/**
 * The webview which will point to http://www.netflix.com
 */
@property (assign) IBOutlet WebView *webView;

@end
