//
//  ViewController.m
//  TableView
//
//  Created by Anton Skutov on 10/4/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* ID = @"ID";
    
    UITableViewCell* cell=[_tableView dequeueReusableCellWithIdentifier:ID forIndexPath:indexPath];
    NSString* info =[[_tree.apples objectAtIndex:indexPath.row] getInfo];
    
    cell.textLabel.text = info;
    NSLog(@"%@",info);
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_tree getSize];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tree=[Tree new];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)shake:(id)sender {
    NSLog(@"234");
    [self.tree shake];
    [_tableView reloadData];
}

- (IBAction)grow:(id)sender {
    [self.tree grow];
    [_tableView reloadData];
}
@end
