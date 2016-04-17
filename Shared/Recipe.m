//
//  Recipe.m
//  Baby Recipes
//
//  Created by Christine Gregori on 4/17/16.
//  Copyright © 2016 Christine Gregori. All rights reserved.
//

#import "Recipe.h"
#import "AgeRange.h"
#import "Ingredient.h"

#import "Recipe+CoreDataProperties.h"

@implementation Recipe

- (void)willSave {
    [super willSave];
    
    self.dateUpdated = [NSDate date];
}

@end
