//
//  MotorVehicle.m
//  Vehicles
//
//  Created by Administrator on 2/2/16.
//  Copyright © 2016 Administrator. All rights reserved.
//

#import "MotorVehicle.h"
#import "MotorCycle.h"
#import "Truck.h"

@implementation MotorVehicle

+ (instancetype) randomVehicle {
    int idx = arc4random() % 3;
    switch (idx) {
        case 0:
            return [MotorCycle randomInstance];
            break;
            
        case 1:
            return [Truck randomInstance];
            break;
            
        case 2:
            //return [Sedan randomInstance];
            break;
            
        default:
            return nil;
            break;
    }
    return nil;
}







- (instancetype) initWithMake: (NSString *) make
                        model: (NSString *) model
                        color: (NSString *) color {
    self = [super init];
    if (self) {
        _make = make;
        _model = model;
        _color = color;
    }
    return self;
}

- (instancetype) initWithMake: (NSString *) make
                        model: (NSString *) model {
    self = [self initWithMake:make
                        model:model
                        color:@"Unknown"];
    return self;
}

- (instancetype) initWithMake: (NSString *) make {
    
    self = [self initWithMake:make
                        model:@"Unknown"
                        color:@"Unknown"];
    return self;
}
/*
//getters
- (NSString *) make {
    return _make;
}
- (NSString *) model {
    return _model;
}
- (NSString *) color {
    return _color;
}
- (NSString *) type {
    return _type;
}

- (int) numTires {
    return _numTires;
}

//setters
- (void) setNumTires: (int) numTires {
    _numTires = numTires;
}

- (void) setType: (NSString *) type {
    _type = type;
}
 */

- (NSString *) description {
    /* option 1
    return [NSString stringWithFormat:@"\n----Motor Vehicle---\n"
            "Type: %@   Number of Tires: %d\n"
            "Make: %@   Model: %@   Color: %@",
            _type, [self numTires], [self make],
            [self model], [self color]];
     */
    /* option 2 */
    NSMutableString *str = [[NSMutableString alloc] init];
    [str appendString:@"\n-----Motor Vehicle----\n"];
    [str appendFormat:@"Type: %@    Number of Tires: %d\n",
     [self type], [self numTires]];
    [str appendFormat:@"Make: %@   Model: %@   Color: %@\n",
     [self make], [self model], [self color]];
    
    return str;
}

@end

















