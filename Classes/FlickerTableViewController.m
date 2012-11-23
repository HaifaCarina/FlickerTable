    //
//  FlickerTableViewController.m
//  FlickerTable
//
//  Created by Macbook on 5/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FlickerTableViewController.h"


@implementation FlickerTableViewController


- (void)viewDidLoad {	// Called after the controller’s view is loaded into memory.
	
	[super viewDidLoad];	
	
    //Initialize the arrays.
	listOfItems = [[NSMutableArray alloc] init]; 
	//Add items
	[listOfItems addObject:@"Iceland\""];	
	[listOfItems addObject:@"Greenland"];
	[listOfItems addObject:@"Switzerland"];
	[listOfItems addObject:@"Norway"];
	[listOfItems addObject:@"New Zealand"];
	[listOfItems addObject:@"Greece"];
	[listOfItems addObject:@"Rome"];
	[listOfItems addObject:@"Ireland"];
	
	flickerURLs = [[NSMutableArray alloc] init];
	//Add items
	[flickerURLs addObject:@"http://farm2.static.flickr.com/1334/860266408_ed9fc02ac5_t.jpg"];
	[flickerURLs addObject:@"http://farm5.static.flickr.com/4143/4812262669_1560d044ca_t.jpg"];
	[flickerURLs addObject:@"http://farm3.static.flickr.com/2381/2404529134_329d02a7af_t.jpg"];
	[flickerURLs addObject:@"http://farm4.static.flickr.com/3600/3539771921_5bdf154136_t.jpg"];
	[flickerURLs addObject:@"http://farm1.static.flickr.com/88/227929891_c89a7e5600_t.jpg"];
	[flickerURLs addObject:@"http://farm1.static.flickr.com/31/59168581_d63905d18d_t.jpg"];
	[flickerURLs addObject:@"http://farm3.static.flickr.com/2431/3691004611_7271a9889d_t.jpg"];
	[flickerURLs addObject:@"http://farm4.static.flickr.com/3212/2825702298_c3145746ea_t.jpg"];
	
	imageViews = [[NSMutableArray alloc] init];
	
	for (NSString *s in flickerURLs) {
		url = [NSURL URLWithString:s];	
		data = [NSData dataWithContentsOfURL:url];	
		[imageViews addObject:data];
		
	}
	
	UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 460) style:UITableViewStylePlain];
	[tableView setDataSource:self];
	[tableView setDelegate:self];
	[self.view addSubview:tableView];	
	
	[tableView release];
    
}


// UITableViewDataSource Protocol
// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

// REQUIRED UITableViewDataSource Protocol
// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [listOfItems count];
}

// UITableViewDelegate Protocol
// Customize cell height
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;	// can be improved
}

// REQUIRED UITableViewDataSource Protocol
// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
	if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	// Configure the cell.
	cell.textLabel.text = [listOfItems objectAtIndex:indexPath.row];
	
	// display flicker images
	img = [[[UIImage alloc] initWithData:[imageViews objectAtIndex: indexPath.row ]] autorelease];	// data is converted to UIImage data type
	image = [[UIImageView alloc] initWithImage:img];	
	cell.accessoryView = image;
	
    return cell;
}


- (void)dealloc {
	[flickerURLs release];
	[img release];
	[image release];
    [super dealloc];
}


@end
