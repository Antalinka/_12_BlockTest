//
//  AppDelegate.m
//  _12_BlocksTest
//
//  Created by Exo-terminal on 3/16/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import "AppDelegate.h"
#import "GRObject.h"

typedef void(^OurTestBlock) (void);
typedef NSString*(^OurTestBlock2) (NSInteger);

@interface AppDelegate()
@property (copy, nonatomic) OurTestBlock testBlock;
@property (strong, nonatomic) NSString* name;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
/*    [self testMethod];
       NSString* result = [self testMethodWithReturnStringWithParams:@"Test string" value:111];
    */
   /* void (^testBlock)(void);
    testBlock = ^{
        NSLog(@"test Block");
    };
    testBlock();
    

    [self testMethodWithParams:@"Test string" value:111];
    
    void (^testBlockWithParams)(NSString*,NSInteger) =^(NSString* string, NSInteger intValue){
        NSLog(@"Test method with param %@ %d", string,intValue);
    };
    
    NSString* (^testMethodWithReturnStringWithParams)(NSString*,NSInteger) = ^(NSString* string, NSInteger intValue){
        return [NSString stringWithFormat:@"TtestMethodWithReturnStringWithParams with param %@ %d", string,intValue];
    };
    
    NSString* result = testMethodWithReturnStringWithParams(@"Test string", 111);
    
    NSLog(@"%@", result);
    
//    (NSString*) (^testBlockWithReturnValueAndParams)(NSString*,NSInteger) =^(NSString* string, NSInteger intValue){
//        return [NSString stringWithFormat:@"TestBlockWithReturnValueAndParams with param %@ %d", string,intValue];
//        
//    };
    testBlockWithParams(@"Test string", 111);*/
    
   /* __block NSString* testString = @"How is it possible?";
    
    void(^testBlock2)(void);
    
    __block NSInteger i =0;
    testBlock2 =^{
        NSLog(@"test String");
        i = i+1;
        NSLog(@"%d",i);
        testString = [NSString stringWithFormat:@"How is it possible? %d",i];
        NSLog(@"%@", testString);
    };
    testBlock2();
    testBlock2();
    testBlock2();
    testBlock2();
    testBlock2();
    testBlock2();
    
    NSComparisonResult (^bbb)(id,id) = ^(id obj1, id obj2){
    return NSOrderedSame;
    };
    
    NSArray* array = [array sortedArrayUsingComparator:bbb];
    
    
    void(^bbb)(void) = ^{
    NSLog(@"BLOCK!!!!");
    };
    
    [self testMethodWithBlock:bbb];
    
    [self testMethodWithBlock2:testBlock3];
    
    [self testMethodWithBlock:^{
    NSLog(@"BLOCK!!!!");
    }];
    */
    
    /*OurTestBlock2 tb = ^(NSInteger intValue){
        return [NSString stringWithFormat:@"%d",intValue];
    };
    
    NSLog(@"%@",tb(5));
    
    OurTestBlock testBlock3 = ^{
        NSLog(@"BLOCK!!!!");
    };
    GRObject* obj = [[GRObject alloc]init];
    obj.name = @"OBJECT";
    
   
    __weak GRObject* weakObj = obj;
//    weakObj.name = @"WeakObj";
    
    self.testBlock = ^{
        NSLog(@"%@", weakObj.name);
    };
    
    
    self.testBlock();
    */
    
    self.name =@"Hello!";
    
    GRObject* obj1 = [[GRObject alloc]init];
    obj1.name = @"OBJECT";

   /* [obj1 testMethod:^{
        NSLog(@"%@", self.name);
    }];*/
    return YES;
}
-(void)testMethod{
    NSLog(@"test method");
}
-(void)testMethodWithParams:(NSString*) string value:(NSInteger) intValue{
    NSLog(@"Test method with param %@ %d", string,intValue);
}
-(NSString*)testMethodWithReturnStringWithParams:(NSString*) string value:(NSInteger) intValue{
    return [NSString stringWithFormat:@"TtestMethodWithReturnStringWithParamsd with param %@ %d", string,intValue];
}
-(void)testMethodWithBlock:(void(^)(void))blockTest{
    NSLog(@"testMethodWithBlock");
    blockTest();
    blockTest();
    blockTest();
    blockTest();

}

-(void)testMethodWithBlock2:(void(^)(void))blockTest{
    NSLog(@"testMethodWithBlock");
    blockTest();
    blockTest();
    blockTest();
    blockTest();
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
