//
//  AGCat.m
//  NSArray_replay
//
//  Created by Artem Galagura on 04.05.17.
//  Copyright © 2017 Artem Galagura. All rights reserved.
//

#import "AGCat.h"

@implementation AGCat

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameAnimal =@"Linda";
        self.weightAnimal = 14.f;
        self.heightAnimal = 0.23f;
    }
    return self;
}

-(void) moveOfAnimal{
    NSLog(@"Cat starting");
}

@end
