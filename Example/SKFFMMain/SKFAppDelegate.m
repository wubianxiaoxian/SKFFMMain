//
//  SKFAppDelegate.m
//  SKFFMMain
//
//  Created by wubianxiaoxian on 04/11/2017.
//  Copyright (c) 2017 wubianxiaoxian. All rights reserved.
//

#import "SKFAppDelegate.h"
#import "MainModuleAPI.h"
#import "SKFTest2.h"
#import "SKFTestv1.h"
#import "MGJRouter.h"

@implementation SKFAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    UITabBarController *rootVC = [MainModuleAPI rootTabBarCcontroller];
    [MainModuleAPI addChildVC:[SKFTest2 new] normalImageName:@"tabbar_sound_n" selectedImageName:@"tabbar_sound_n" isRequiredNavController:@(YES)];
     [MainModuleAPI addChildVC:[SKFTestv1 new] normalImageName:@"tabbar_find_n" selectedImageName:@"tabbar_find_h" isRequiredNavController:@(YES)];
    
    
    
//    UITabBarController *rootVC = [MGJRouter objectForURL:@"skf://tabBarVC"];
//    
//    [MGJRouter openURL:@"skf://addChildVC" withUserInfo:@{
//                                                          @"vc":[SKFTest2 new],
//                                                          @"nImgName":@"tabbar_find_n",
//                                                          @"sImgName":@"tabbar_find_h",
//                                                          @"isRN": @(YES)
//                                                          } completion:^(id result) {
//                                                              NSLog(@"添加子控制器完成--%@", result);                                                              
//                                                          }];
//    [MGJRouter openURL:@"skf://addChildVC" withUserInfo:@{
//                                                          @"vc":[SKFTestv1 new],
//                                                          @"nImgName":@"tabbar_sound_n",
//                                                          @"sImgName":@"tabbar_sound_h",
//                                                          @"isRN": @(YES)
//                                                          } completion:^(id result) {
//                                                              NSLog(@"添加子控制器完成--%@", result);
//                                                          }];
//    
//    
//    
//
//[MGJRouter openURL:@"skf://addChildVC" withUserInfo:@{
//                                                      @"vc":[SKFTestv1 new],
//                                                      @"nImgName":@"tabbar_download_n",
//                                                      @"sImgName":@"tabbar_download_h",
//                                                      @"isRN": @(YES)
//                                                      } completion:^(id result) {
//                                                          NSLog(@"添加子控制器完成--%@", result);
//                                                          
//                                                          
//                                                      }];
//[MGJRouter openURL:@"skf://addChildVC" withUserInfo:@{
//                                                      @"vc":[SKFTestv1 new],
//                                                      @"nImgName":@"tabbar_me_n",
//                                                      @"sImgName":@"tabbar_me_h",
//                                                      @"isRN": @(YES)
//                                                      } completion:^(id result) {
//                                                          NSLog(@"添加子控制器完成--%@", result);
//                                                          
//                                                          
//                                                      }];
//
//
//
//    [MGJRouter registerURLPattern:@"skf://playerVC" toHandler:^(NSDictionary *routerParameters) {
//        // 获取播放器控制器, 弹出
//        UIViewController *vc = [[UIViewController alloc] init];
//        vc.view.backgroundColor = [UIColor greenColor];
//        
//        [self.window.rootViewController presentViewController:vc animated:YES completion:nil];
//        
//    }];
    
    
    self.window.rootViewController = rootVC;
    [self.window makeKeyAndVisible];



    return YES;
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
