//
//  FlickerTableAppDelegate.m
//  FlickerTable
//
//  Created by Macbook on 5/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FlickerTableAppDelegate.h"

@implementation FlickerTableAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
	viewController = [[FlickerTableViewController alloc]init];
    [self.window addSubview:viewController.view];
    [self.window makeKeyAndVisible];	// Makes the receiver the key window and makes that window visible
    
    return YES;
}

- (void)dealloc {
	[viewController release];
    [window release];
    [super dealloc];
}


@end
