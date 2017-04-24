//
//  MainModuleAPI.m
//  Pods
//
//  Created by 孙凯峰 on 2017/4/11.
//
//

#import "MainModuleAPI.h"
#import "SKFTabBar.h"
#import "SKFTabBarController.h"
#import "SKFNavBar.h"
#import "SKFMiddleView.h"
@implementation MainModuleAPI
+ (SKFTabBarController *)rootTabBarCcontroller {
    return [SKFTabBarController shareInstance];
}
+ (void)addChildVC:(UIViewController *)vc normalImageName:(NSString *)normalImageName selectedImageName:(NSString *)selectedImageName isRequiredNavController:(BOOL)isRequired {
    
    [[SKFTabBarController shareInstance] addChildVC:vc normalImageName:normalImageName selectedImageName:selectedImageName isRequiredNavController:isRequired];
    
}
+ (void)setTabbarMiddleBtnClick: (void(^)(BOOL isPlaying))middleClickBlock {
    
    SKFTabBar *tabbar = (SKFTabBar *)[SKFTabBarController shareInstance].tabBar;
    tabbar.middleClickBlock = middleClickBlock;
    
}
/**
 *  设置全局的导航栏背景图片
 *
 *  @param globalImg 全局导航栏背景图片
 */
+ (void)setNavBarGlobalBackGroundImage: (UIImage *)globalImg {
    [SKFNavBar setGlobalBackGroundImage:globalImg];
}
/**
 *  设置全局导航栏标题颜色, 和文字大小
 *
 *  @param globalTextColor 全局导航栏标题颜色
 *  @param fontSize        全局导航栏文字大小
 */
+ (void)setNavBarGlobalTextColor: (UIColor *)globalTextColor andFontSize: (CGFloat)fontSize {
    
    [SKFNavBar setGlobalTextColor:globalTextColor andFontSize:fontSize];
    
}

+ (UIView *)middleView {
    return [SKFMiddleView middleView];
}

@end
