//
//  ViewController.h
//  TableView
//
//  Created by Anton Skutov on 10/4/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "tree.h"
#import "apple.h"

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property  Tree * tree;
@property BOOL first;

- (IBAction)shake:(id)sender;
- (IBAction)grow:(id)sender;


@end

