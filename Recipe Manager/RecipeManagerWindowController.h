//
//  RecipeManagerWindowController.h
//  Baby Recipes
//
//  Created by Christine Gregori on 4/17/16.
//  Copyright © 2016 Christine Gregori. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface RecipeManagerWindowController : NSWindowController
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@end
