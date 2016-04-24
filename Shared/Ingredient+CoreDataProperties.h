//
//  Ingredient+CoreDataProperties.h
//  Baby Recipes
//
//  Created by Christine Gregori on 4/17/16.
//  Copyright © 2016 Christine Gregori. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Ingredient.h"

NS_ASSUME_NONNULL_BEGIN

@interface Ingredient (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *recipes;

@end

@interface Ingredient (CoreDataGeneratedAccessors)

- (void)addRecipesObject:(NSManagedObject *)value;
- (void)removeRecipesObject:(NSManagedObject *)value;
- (void)addRecipes:(NSSet<NSManagedObject *> *)values;
- (void)removeRecipes:(NSSet<NSManagedObject *> *)values;

@end

NS_ASSUME_NONNULL_END
