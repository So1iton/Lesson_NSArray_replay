//
//  AGSwimmer.m
//  NSArray_replay
//
//  Created by Artem Galagura on 04.05.17.
//  Copyright © 2017 Artem Galagura. All rights reserved.
//

#import "AGSwimmer.h"

@implementation AGSwimmer

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Nazar";
        self.surname = @"Prihodko";
        self.weight = 77.8f;
        self.height = 185.2f;
        self.pol = @"Male";
    }
    return self;
}

-(void) moveOfHuman{
    [super moveOfHuman];
    NSLog(@"Swimmer moved at the swimming pool!");
}


@end
