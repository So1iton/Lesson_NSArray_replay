//
//  AGHuman.m
//  NSArray_replay
//
//  Created by Artem Galagura on 04.05.17.
//  Copyright © 2017 Artem Galagura. All rights reserved.
//

#import "AGHuman.h"

@implementation AGHuman

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Volodya";
        self.surname = @"Ivanov";
        self.weight = 87.3f;
        self.height = 192.5f;
        self.pol = @"Male";
        self.type = @"HUMAN";
    }
    return self;
}

-(void) moveOfHuman{
    NSLog(@"Human moved at the road!");
}

@end
