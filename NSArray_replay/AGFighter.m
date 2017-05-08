//
//  AGFighter.m
//  NSArray_replay
//
//  Created by Artem Galagura on 04.05.17.
//  Copyright © 2017 Artem Galagura. All rights reserved.
//

#import "AGFighter.h"

@implementation AGFighter

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Kostya";
        self.surname = @"Lomachenko";
        self.weight = 71.4f;
        self.height = 175.2f;
        self.pol = @"Male";
        self.valueFighting = 54;
        self.valueWin = 47;
        self.valueFalse = self.valueFighting - self.valueWin;
    }
    return self;
}

-(void) moveOfHuman{
    [super moveOfHuman];
    NSLog(@"Fighter is starting");
    
}

@end
