//
//  AGDog.m
//  NSArray_replay
//
//  Created by Artem Galagura on 04.05.17.
//  Copyright © 2017 Artem Galagura. All rights reserved.
//

#import "AGDog.h"

@implementation AGDog

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameAnimal =@"Tarzan";
        self.weightAnimal = 34.f;
        self.heightAnimal = 0.98f;
    }
    return self;
}

-(void) moveOfAnimal{
    NSLog(@"Dog starting");
}

@end
