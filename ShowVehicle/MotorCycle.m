//
//  MotorCycle.m
//  Vehicles
//
//  Created by Administrator on 2/2/16.
//  Copyright © 2016 Administrator. All rights reserved.
//

#import "MotorCycle.h"



@implementation MotorCycle

+ (instancetype) randomInstance {
    
    NSArray *makes = @[@"Honda", @"Suzuki", @"Harley", @"BMW"];
    NSArray *models = @[@"Road Glide", @"R1200R", @"SFV 540", @"Bolt"];
    NSArray *colors = @[@"Black", @"White", @"Red", @"Blue"];
    
    
    NSString *make = makes[arc4random() % [makes count]];
    NSString *color = colors[arc4random() % [colors count]];
    NSString *model = models[arc4random() % [models count]];
    
    return [[MotorCycle alloc] initWithMake:make
                                      model:model
                                      color:color];
}

- (instancetype) initWithMake:(NSString *)make
                        model:(NSString *)model
                        color:(NSString *)color {
   self = [super initWithMake:make
                        model:model
                        color:color];
    if (self) {
        [self setNumTires:2];
        [self setType:@"Motorcycle"];
    }
    return self;
}
@end
