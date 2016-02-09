//
//  MotorVehicle.h
//  Vehicles
//
//  Created by Administrator on 2/2/16.
//  Copyright © 2016 Administrator. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MotorVehicle : NSObject

{
    //NSString *_make;
    //NSString *_model;
    //NSString *_type;
    //NSString *_color;
    //int _numTires;
}

@property (nonatomic, readonly) NSString *make;
@property (nonatomic) NSString *model;
@property (nonatomic) NSString *type;
@property (nonatomic) NSString *color;
@property (nonatomic) int numTires;


//initializers
+ (instancetype) randomVehicle;

- (instancetype) initWithMake: (NSString *) make
                        model: (NSString *) model
                        color: (NSString *) color;

- (instancetype) initWithMake: (NSString *) make
                        model: (NSString *) model;

- (instancetype) initWithMake: (NSString *) make;

//getters
//- (NSString *) make;
//- (NSString *) model;
//- (NSString *) color;
//- (NSString *) type;
//- (int) numTires;

//setters
//- (void) setNumTires: (int) numTires;
//- (void) setType: (NSString *) type;

@end









