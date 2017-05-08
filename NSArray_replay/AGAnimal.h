//
//  AGAnimal.h
//  NSArray_replay
//
//  Created by Artem Galagura on 04.05.17.
//  Copyright © 2017 Artem Galagura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AGAnimal : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) CGFloat heightAnimal;
@property (assign, nonatomic) CGFloat weightAnimal;
@property (strong, nonatomic) NSString *genderAnimal;
@property (strong, nonatomic) NSString *type;

-(void) moveOfAnimal;


@end
