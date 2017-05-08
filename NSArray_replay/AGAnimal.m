//
//  AGAnimal.m
//  NSArray_replay
//
//  Created by Artem Galagura on 04.05.17.
//  Copyright © 2017 Artem Galagura. All rights reserved.
//

#import "AGAnimal.h"

@implementation AGAnimal

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameAnimal =@"Bobrik";
        self.weightAnimal = 23.f;
        self.heightAnimal = 0.76f;
        self.type = @"ANIMAL";
    }
    return self;
}

-(void) moveOfAnimal{
    NSLog(@"Animal start running at the road!");
    
}

@end
