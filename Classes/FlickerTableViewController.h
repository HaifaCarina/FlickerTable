//
//  FlickerTableViewController.h
//  FlickerTable
//
//  Created by Macbook on 5/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FlickerTableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> { 
	
	NSMutableArray *listOfItems, *flickerURLs, *imageViews;	
	
	NSURL *url;
	NSData *data;
	UIImage *img;
	UIImageView *image;
	
	
}

@end
