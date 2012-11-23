//
//  FlickerTableAppDelegate.h
//  FlickerTable
//
//  Created by Macbook on 5/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import	"FlickerTableViewController.h"

@interface FlickerTableAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	FlickerTableViewController *viewController;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) FlickerTableViewController *viewController;

// if atomic, synthesized accessors provide robust access to properties in a multithreaded environment.
// if nonatomic, a synthesized accessor for an object property simply returns the value directly.

@end

