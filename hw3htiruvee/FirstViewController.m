//
//  FirstViewController.m
//  hw3htiruvee
//
//  Created by Haripriya Tiruveedhula on 6/8/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()


@end

@implementation FirstViewController

@synthesize dateTime;
@synthesize deviceNo;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self init];
    self.title=@"First";
    //adding the current time zone
    NSTimeZone* currentTimeZone = [NSTimeZone timeZoneWithAbbreviation:@"EST"];
    
    //Date Format
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setTimeZone:currentTimeZone];
    [dateFormatter setDateFormat:@"yyyy-MM-dd hh:mm:ss a"];
    
    //Getting Current Date and Time
    NSString *dateTimeString = [dateFormatter stringFromDate:[NSDate date]];
    
    //Getting Device model and version no
    NSString *version = [[UIDevice currentDevice] systemVersion] ;
    NSString *deviceType = [[UIDevice currentDevice] model];
    NSString *ModelNVersion = [NSString stringWithFormat:@"%@ %@", deviceType, version];
    self.dateTime.text = dateTimeString;
    self.deviceNo.text = ModelNVersion;
    self.id.text = @"htiruvee";
    
    NSLog(@"andrewID: htiruvee");
    NSLog(@"CurrentDate & time: \t%@\t %@\t", dateTimeString, currentTimeZone);
    NSLog(@"Device Version: \t%@\t", ModelNVersion);
    
    }



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
