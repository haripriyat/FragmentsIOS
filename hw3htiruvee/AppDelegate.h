//
//  AppDelegate.h
//  hw3htiruvee
//
//  Created by Haripriya Tiruveedhula on 6/8/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "ThirdTableViewController.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
///// Core Data
@property (readonly, strong, nonatomic)
NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic)
NSManagedObjectModel *managedObjectModel;
@property (readonly,strong, nonatomic)
NSPersistentStoreCoordinator
*persistentStoreCoordinator;
- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end

