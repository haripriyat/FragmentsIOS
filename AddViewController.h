//
//  AddViewController.h
//  hw3htiruvee
//
//  Created by Haripriya Tiruveedhula on 6/9/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *eventName;
@property (weak, nonatomic) IBOutlet UITextField *eventTime;
@property (weak, nonatomic) IBOutlet UITextField *eventLocation;
- (IBAction)saveEvent:(UIButton *)sender;

@end
