//
//  RecipeManagerWindowController.m
//  Baby Recipes
//
//  Created by Christine Gregori on 4/17/16.
//  Copyright © 2016 Christine Gregori. All rights reserved.
//

#import "RecipeManagerWindowController.h"

#import "AppDelegate.h"
#import "RecipeManagerViewController.h"

@interface RecipeManagerWindowController ()

@end

@implementation RecipeManagerWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    AppDelegate *delegate = [[NSApplication sharedApplication] delegate];
    self.managedObjectContext = delegate.managedObjectContext;
    
    RecipeManagerViewController *vc = (__kindof NSViewController *)self.contentViewController;
    vc.managedObjectContext = self.managedObjectContext;
}

- (NSUndoManager *)windowWillReturnUndoManager:(NSWindow *)window {
    return self.managedObjectContext.undoManager;
}

@end
