//
//  RtbIOSDemoAppDelegate.m
//  RtbIOSDemo
//
//  Created by Elf Sundae on 7/17/11.
//  Copyright 2011 http://elfsundae.co.cc . All rights reserved.
//

#import "RtbIOSDemoAppDelegate.h"
#import "test.png.h"

@implementation RtbIOSDemoAppDelegate


@synthesize window=_window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	[self.window makeKeyAndVisible];
	
	unsigned char *imgBytes = test_png;
	NSUInteger imgLenght = test_png_len;
	NSData *imgData = [NSData dataWithBytesNoCopy:imgBytes length:imgLenght freeWhenDone:NO];
	// UIImage *image = [UIImage imageWithData:imgData];
	// or
	UIImage *image = [[UIImage alloc] initWithData:imgData];
	
	UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
	imageView.frame = self.window.frame;
	imageView.contentMode = UIViewContentModeCenter;
	[self.window addSubview:imageView];
	[imageView release];
	
	[image release];
	return YES;
}

- (void)dealloc
{
	[_window release];
	[super dealloc];
}

@end
