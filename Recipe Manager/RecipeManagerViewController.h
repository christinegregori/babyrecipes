//
//  ViewController.h
//  Recipe Manager
//
//  Created by Christine Gregori on 4/11/16.
//  Copyright © 2016 Christine Gregori. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface RecipeManagerViewController : NSViewController
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@end

