//
//  AGCirclist.m
//  NSArray_replay
//
//  Created by Artem Galagura on 04.05.17.
//  Copyright © 2017 Artem Galagura. All rights reserved.
//

#import "AGCirclist.h"

@implementation AGCirclist

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Tatyana";
        self.surname = @"Travolta";
        self.weight = 46.9f;
        self.height = 167.3f;
        self.pol = @"Female";
    }
    return self;
}

-(void) moveOfHuman{
    [super moveOfHuman];
    NSLog(@"Circlist moved at the road!");
}


@end
