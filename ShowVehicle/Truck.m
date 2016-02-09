//
//  Truck.m
//  Vehicles
//
//  Created by Administrator on 2/4/16.
//  Copyright © 2016 Administrator. All rights reserved.
//

#import "Truck.h"

@implementation Truck

+ (instancetype) randomInstance {
    
    NSArray *colors = @[@"Black", @"Red", @"White", @"Yellow"];
    NSMutableDictionary *makeModel = [[NSMutableDictionary alloc]init];
    
    [makeModel setObject:@"Ford" forKey:@"F-150"];
    [makeModel setObject:@"Toyota" forKey:@"Tundra"];
    [makeModel setObject:@"GMC" forKey:@"Sierra"];
    [makeModel setObject:@"Chevy" forKey:@"Silverado"];
    [makeModel setObject:@"Ford" forKey:@"Ranger"];
    
    NSArray *models = [makeModel allKeys];
    
    int truckIdx  = arc4random() % [models count];
    NSString *model = models[truckIdx];
    NSString *make = [makeModel objectForKey:model];
    
    return  [[Truck alloc]initWithMake:make
                                 model:model
                                 color:colors[arc4random() % [colors count]]];
    
}

- (instancetype) initWithMake:(NSString *)make
                        model:(NSString *)model
                        color:(NSString *)color {
    self = [super initWithMake:make model:model color:color];
    if (self) {
        self.numTires = 4;
        self.type = @"Truck";  //[self setType: @"Truck"];
    }
    return self;
}

@end
