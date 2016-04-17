//
//  Recipe+CoreDataProperties.h
//  Baby Recipes
//
//  Created by Christine Gregori on 4/17/16.
//  Copyright © 2016 Christine Gregori. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Recipe.h"

NS_ASSUME_NONNULL_BEGIN

@interface Recipe (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *blurb;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *steps;
@property (nullable, nonatomic, retain) NSSet<AgeRange *> *ageranges;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *categories;
@property (nullable, nonatomic, retain) NSSet<Ingredient *> *ingredients;

@end

@interface Recipe (CoreDataGeneratedAccessors)

- (void)addAgerangesObject:(AgeRange *)value;
- (void)removeAgerangesObject:(AgeRange *)value;
- (void)addAgeranges:(NSSet<AgeRange *> *)values;
- (void)removeAgeranges:(NSSet<AgeRange *> *)values;

- (void)addCategoriesObject:(NSManagedObject *)value;
- (void)removeCategoriesObject:(NSManagedObject *)value;
- (void)addCategories:(NSSet<NSManagedObject *> *)values;
- (void)removeCategories:(NSSet<NSManagedObject *> *)values;

- (void)addIngredientsObject:(Ingredient *)value;
- (void)removeIngredientsObject:(Ingredient *)value;
- (void)addIngredients:(NSSet<Ingredient *> *)values;
- (void)removeIngredients:(NSSet<Ingredient *> *)values;

@end

NS_ASSUME_NONNULL_END
