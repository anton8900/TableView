//
//  apple.m
//  apple tree
//
//  Created by Anton Skutov on 9/18/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import "apple.h"

@implementation Apple

-(id)init
{
    self = [super init];
    if (self) {
        _count=arc4random_uniform(10);
        _weight=arc4random_uniform(100);
        _sort=@"Antonovka";
    }
    return self;
}
-(id) initWithCount: (int) count Weight: (int) weight Sort: (NSString*) sort
{
    self=[super init];
    if(self)
    {
        _count=count;
        _weight=weight;
        _sort=sort;
    }
    return self;
}
-(NSString*) getInfo
{
    return [NSString stringWithFormat:@"Count: %d Weight: %d Sort: %@",_count,_weight,_sort];
}
@end

