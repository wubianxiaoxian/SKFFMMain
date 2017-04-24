//
//  SKFFMMainRouter.m
//  Pods
//
//  Created by 孙凯峰 on 2017/4/12.
//
//

#import "SKFFMMainRouter.h"
#import "MGJRouter.h"
#import "MainModuleAPI.h"
@implementation SKFFMMainRouter
+(void)load{
    [MGJRouter registerURLPattern:@"skf://tabBarVC" toObjectHandler:^id(NSDictionary *routerParameters) {
        return [MainModuleAPI rootTabBarCcontroller];

    }];
    //注册添加子控制器
    [MGJRouter registerURLPattern:@"skf://addChildVC" toHandler:^(NSDictionary *routerParameters) {
        NSLog(@"%@",routerParameters);
        NSDictionary *param=routerParameters[MGJRouterParameterUserInfo];
        
        UIViewController *vc = param[@"vc"];
        NSString *nImg = param[@"nImgName"];
        NSString *sImg = param[@"sImgName"];
        BOOL isR = [param[@"isRN"] boolValue];
        [MainModuleAPI addChildVC:vc normalImageName:nImg selectedImageName:sImg isRequiredNavController:isR];
        // 完成的回调代码块
        MGJRouterHandler handle = routerParameters[MGJRouterParameterCompletion];
        if (handle) {
            handle(@{@"内部处理好了": @"c传递的数据"});
        }


    }];
    
    [MainModuleAPI setTabbarMiddleBtnClick:^(BOOL isPlaying) {
        [MGJRouter openURL:@"skf://playerVC" withUserInfo:nil completion:nil];

    }];
}
@end
