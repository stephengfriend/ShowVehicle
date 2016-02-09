//
//  ViewController.h
//  ShowVehicle
//
//  Created by Stephen Friend on 2/9/16.
//  Copyright © 2016 AACC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Truck.h"

@interface ViewController : UIViewController

@property Truck *vehicle;

// Outlets
@property (weak, nonatomic) IBOutlet UITextField *type;
@property (weak, nonatomic) IBOutlet UITextField *make;
@property (weak, nonatomic) IBOutlet UITextField *model;
@property (weak, nonatomic) IBOutlet UITextField *tires;
@property (weak, nonatomic) IBOutlet UITextField *color;

// Actions
- (IBAction)newVehicle:(id)sender;

@end

