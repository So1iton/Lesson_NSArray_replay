//
//  AGHuman.h
//  NSArray_replay
//
//  Created by Artem Galagura on 04.05.17.
//  Copyright © 2017 Artem Galagura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AGHuman : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *surname;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGFloat weight;
@property (strong, nonatomic) NSString *pol;
@property (strong, nonatomic) NSString *type;

-(void) moveOfHuman;


@end
