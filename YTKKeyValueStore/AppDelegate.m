//
//  AppDelegate.m
//  YTKKeyValueStore
//
//  Created by TangQiao on 10/3/14.
//  Copyright (c) 2014 TangQiao. All rights reserved.
//

#import "AppDelegate.h"
#import "YTKKeyValueStore.h"
#import "Person.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    YTKKeyValueStore *store = [YTKKeyValueStore sharedInstance]; //表名不能为'table'或者'纯数字'
    NSDictionary *dict = @{
                           @"id": @1,
                           @"name": @"tangqiao",
                           @"age": @30
                           };
    
    UIImage *image = [UIImage imageNamed:@"123"];
    UIImage *image2222 = [UIImage imageNamed:@"456"];
    NSArray *images = @[image, image2222];
    
    Person *jim = [Person new];
    jim.name = @"jim";
    jim.sex = @"m";
    jim.age = @10;
    
    Person *lily = [Person new];
    lily.name = @"lily";
    lily.sex = @"f";
    lily.age = @9;
    
    NSArray *persons = @[jim,lily];
    
    
    
    
    
    [store putObject:dict withId:@"1" intoTable:@"test_table"]; //putObject可以存:字典,数组[dict,string,number]
    NSDictionary *result = [store getObjectById:@"1" fromTable:@"test_table"];
    NSLog(@"_____________%@", result);

    [store putImage:image withId:@"2" intoTable:@"test_table"];
    UIImage *image2 = [store getImageById:@"2" fromTable:@"test_table"];
    NSLog(@"_____________%@", image2);
    
    [store putModel:jim withId:@"3" intoTable:@"test_table"];
    Person *jim2 = [store getModelById:@"3" fromTable:@"test_table" modelClass:[Person class]];
    NSLog(@"_____________%@", jim2);

    [store putModels:persons withId:@"4" intoTable:@"test_table"];
    NSArray *persons2 = [store getModelsById:@"4" fromTable:@"test_table" modelClass:[Person class]];
    NSLog(@"_____________%@", persons2);
    
    [store putImages:images withId:@"5" intoTable:@"test_table"];
    NSArray *imagessssss = [store getImagesById:@"5" fromTable:@"test_table"];
    NSLog(@"_____________%@", imagessssss);
    

    
    
    
    YTKKeyValueItem *item1 = [store getYTKKeyValueItemById:@"1" fromTable:@"test_table"];
    YTKKeyValueItem *item2 = [store getYTKKeyValueItemById:@"2" fromTable:@"test_table"];
    YTKKeyValueItem *item3 = [store getYTKKeyValueItemById:@"3" fromTable:@"test_table"];
    YTKKeyValueItem *item4 = [store getYTKKeyValueItemById:@"4" fromTable:@"test_table"];
    YTKKeyValueItem *item5 = [store getYTKKeyValueItemById:@"5" fromTable:@"test_table"];
    NSLog(@"_____________item1:%@ \n_____________item2:%@ \n_____________item3:%@ \n_____________item4:%@ \n_____________item5:%@", item1,item2,item3,item4,item5);
    
    NSUInteger count = [store getCountFromTable:@"test_table"];
    NSLog(@"_____________%ld", count);
    
//    NSArray *arr = [store getAllItemsFromTable:@"test_table"];
//    NSLog(@"_____________%@", arr);
    
    
//    [store deleteObjectById:@"2" fromTable:@"test_table"];
//    [store clearTable:@"test_table"];
//    [store dropTable:@"test_table"];
//    [store deleteDatabase:nil];
    
    return YES;
}


@end
