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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Make sure your segue name in storyboard is the same as this line
    if ([[segue identifier] isEqualToString:@"idShow"])
    {
        // Get reference to the destination view controller
        
        ViewController *vc = [segue destinationViewController];
        
        // Pass any objects to the view controller here, like...
        UILabel *lab=[UILabel new];
        lab=[[UILabel alloc] initWithFrame:CGRectMake(60, 120, 300, 30)];
        
        NSIndexPath *path = [_tableView indexPathForSelectedRow];
        UITableViewCell *cell = [_tableView cellForRowAtIndexPath:path];
        [lab setText:cell.textLabel.text];
        [vc.view addSubview:lab];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* ID = @"ID";
    
    UITableViewCell* cell=[_tableView dequeueReusableCellWithIdentifier:ID forIndexPath:indexPath];
    NSString* info =[[_tree.apples objectAtIndex:indexPath.row] getInfo];
    
    cell.textLabel.text = info;
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_tree getSize];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    if(_tree==nil)
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
