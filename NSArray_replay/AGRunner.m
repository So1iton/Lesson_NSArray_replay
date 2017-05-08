//
//  AGRunner.m
//  NSArray_replay
//
//  Created by Artem Galagura on 04.05.17.
//  Copyright © 2017 Artem Galagura. All rights reserved.
//

#import "AGRunner.h"

@implementation AGRunner

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Svetlana";
        self.surname = @"Sobyanina";
        self.weight = 53.0f;
        self.height = 178.f;
        self.pol = @"Female";
    }
    return self;
}

-(void) moveOfHuman{
    [super moveOfHuman];
    NSLog(@"Runner moved at the street!");
}


@end
