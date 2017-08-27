//
//  AddViewController.m
//  hw3htiruvee
//
//  Created by Haripriya Tiruveedhula on 6/9/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import "AddViewController.h"
#import "ThirdTableViewController.h"


@interface AddViewController ()


@end


@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Save button method
- (IBAction)saveEvent:(UIButton *)sender {
    NSString *eventName=_eventName.text;
    NSString *eventTime=_eventTime.text;
    NSString *eventLocation=_eventLocation.text;
    
    
    // Get Master view controller
    ThirdTableViewController *masterController =
    (ThirdTableViewController
     *)[self.navigationController.viewControllers
        objectAtIndex:self.navigationController.viewControllers.count-2];
    
    if(self.eventTime.text.length == 0){
        NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd hh:mm:ss a"];
        
        //Getting Current Date and Time
        NSString *dateTimeString = [dateFormatter stringFromDate:[NSDate date]];
        
        eventTime=dateTimeString;
    }
    if(self.eventLocation.text.length == 0){
        eventLocation =@"TBD";
    }
    [masterController insertNewObjectEventName:eventName eventTime:eventTime eventLocation:eventLocation];
    [self.navigationController popViewControllerAnimated:YES];
    
    NSLog(@"Event: %@\t, %@\t, %@\t",eventName, eventTime, eventLocation);
}

@end
