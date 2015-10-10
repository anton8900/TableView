//
//  tree.h
//  apple tree
//
//  Created by Anton Skutov on 9/18/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "apple.h"

@interface Tree : NSObject
@property (nonatomic)  NSMutableArray* apples;

-(void) grow;
-(void) shake;
-(void) addApple:(Apple*) apple;
-(unsigned long) getSize;
-(void) print;
@end
