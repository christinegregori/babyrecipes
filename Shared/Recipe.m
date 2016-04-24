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

- (void)awakeFromInsert {
    [super awakeFromInsert];

    // this way a recipe always has an dateUpdated
    [self setPrimitiveValue:[NSDate date] forKey:NSStringFromSelector(@selector(dateUpdated))];
}

- (void)willSave {
    [super willSave];
    
    if(![self isDeleted] && self.changedValues[NSStringFromSelector(@selector(dateUpdated))] == nil) {
        self.dateUpdated = [NSDate date];
    }
}

@end
