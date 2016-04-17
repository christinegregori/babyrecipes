//
//  RecipeManagerWindowController.m
//  Baby Recipes
//
//  Created by Christine Gregori on 4/17/16.
//  Copyright © 2016 Christine Gregori. All rights reserved.
//

#import "RecipeManagerWindowController.h"

#import "AppDelegate.h"

@interface RecipeManagerWindowController ()

@end

@implementation RecipeManagerWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    AppDelegate *delegate = [[NSApplication sharedApplication] delegate];
    self.managedObjectContext = delegate.managedObjectContext;
}

@end
