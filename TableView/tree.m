//
//  tree.m
//  apple tree
//
//  Created by Anton Skutov on 9/18/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import "tree.h"
#import "apple.h"

@implementation Tree
-(id) init
{
    _apples=[NSMutableArray new];
    return self;
}
-(void) addApple: (Apple*) apple
{
    [_apples addObject: apple];
}
-(void) grow
{
    int kol=arc4random_uniform(100);
    while(kol>0)
    {
        [self addApple: [Apple new]];
        kol--;
    }
}
-(void) shake
{
    int kol=arc4random_uniform(100);
    while(kol>0)
    {
        if([_apples count]>0)
            [_apples removeObjectAtIndex:(0)];
        else
            break;
        kol--;
    }
}
-(void) print
{
    for (id a in _apples) {
        if ([a respondsToSelector:@selector(getInfo)]) {
            [a getInfo];
        }
    }
}
-(unsigned long) getSize
{
    return [_apples count];
}
@end
