//
//  apple.h
//  apple tree
//
//  Created by Anton Skutov on 9/18/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Apple : NSObject{
}
@property(nonatomic) int count;
@property (nonatomic)  NSString* sort;
@property (nonatomic)  int weight;
-(id) initWithCount: (int) count Weight: (int) weight Sort: (NSString*) sort;
-(NSString*) getInfo;

@end
