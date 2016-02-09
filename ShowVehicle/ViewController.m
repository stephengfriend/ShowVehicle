//
//  ViewController.m
//  ShowVehicle
//
//  Created by Stephen Friend on 2/9/16.
//  Copyright © 2016 AACC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.vehicle = [Truck randomInstance];
    
    [self updateFields:(self.vehicle)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)newVehicle:(id)sender {
        [self updateFields:([Truck randomInstance])];
}

- (void) updateFields:(Truck *)truck {
    self.type.text = truck.type;
    self.make.text = truck.make;
    self.model.text = truck.model;
    self.tires.text = [NSString stringWithFormat:@"%d", truck.numTires];
    self.color.text = truck.color;
}

@end
