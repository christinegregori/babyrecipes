//
//  ViewController.m
//  Recipe Manager
//
//  Created by Christine Gregori on 4/11/16.
//  Copyright © 2016 Christine Gregori. All rights reserved.
//

#import "RecipeManagerViewController.h"

#import "AgeRange.h"
#import "Category.h"
#import "Ingredient.h"
#import "Recipe.h"

@implementation RecipeManagerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)setManagedObjectContext:(NSManagedObjectContext *)managedObjectContext {
    _managedObjectContext = managedObjectContext;
    
//    [self addTestRecipe];
}

- (void)addTestRecipe {
    // add a test object
    AgeRange *age = [NSEntityDescription insertNewObjectForEntityForName:@"AgeRange" inManagedObjectContext:self.managedObjectContext];
    age.name = @"6-12 months";
    
    Ingredient *ing = [NSEntityDescription insertNewObjectForEntityForName:@"Ingredient" inManagedObjectContext:self.managedObjectContext];
    ing.name = @"cherrios";
    
    Category *c = [NSEntityDescription insertNewObjectForEntityForName:@"Category" inManagedObjectContext:self.managedObjectContext];
    c.name = @"Carbs";
    
    Recipe *r = [NSEntityDescription insertNewObjectForEntityForName:@"Recipe" inManagedObjectContext:self.managedObjectContext];
    r.name = @"O's";
    r.blurb = @"Everyone loves O's";
    r.steps = @"1. Buy O's\n2. Pour O's";
    [r addAgerangesObject:age];
    [r addIngredientsObject:ing];
    [r addCategoriesObject:c];
    
    NSError *error;
    if (![self.managedObjectContext save:&error]) {
        [[NSApplication sharedApplication] presentError:error];
    }
}

@end
