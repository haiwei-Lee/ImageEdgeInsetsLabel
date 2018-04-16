//
//  UIView+Rect.h
//  ImageEdgeInsetsLabel
//
//  Created by lee on 2018/4/13.
//  Copyright © 2018年 首约科技（北京）有限公司 Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  UIScreen width.
 */
#define  kWidth   [UIScreen mainScreen].bounds.size.width

/**
 *  UIScreen height.
 */
#define  kHeight  [UIScreen mainScreen].bounds.size.height

/**
 *  Status bar height.
 */
#define  kStatusBarHeight      [[UIApplication sharedApplication] statusBarFrame].size.height

/**
 *  Navigation bar height.
 */
#define  kNavigationBarHeight  UINavigationBar.appearance().frame.size.height

/**
 *  Tabbar height.
 */
#define  kTabbarHeight         49.f

/**
 *  Status bar & navigation bar height.
 */
#define  kStatusBarAndNavigationBarHeight   (kStatusBarHeight + kNavigationBarHeight)

/**
 *  iPhone4 or iPhone4s
 */
#define  iPhone4_4s     (Width == 320.f && Height == 480.f ? YES : NO)

/**
 *  iPhone5 or iPhone5s
 */
#define  iPhone5_5s     (Width == 320.f && Height == 568.f ? YES : NO)

/**
 *  iPhone6 or iPhone6s
 */
#define  iPhone6_6s     (Width == 375.f && Height == 667.f ? YES : NO)

/**
 *  iPhone6Plus or iPhone6sPlus
 */
#define  iPhone6_6sPlus (Width == 414.f && Height == 736.f ? YES : NO)

#define iPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)

@interface UIView (SetRect)

/*----------------------
 * Absolute coordinate *
 ----------------------*/

@property (nonatomic) CGPoint viewOrigin;
@property (nonatomic) CGSize  viewSize;

@property (nonatomic) CGFloat x;
@property (nonatomic) CGFloat y;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;

@property (nonatomic) CGFloat top;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat left;
@property (nonatomic) CGFloat right;

@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;

/*----------------------
 * Relative coordinate *
 ----------------------*/

@property (nonatomic, readonly) CGFloat middleX;
@property (nonatomic, readonly) CGFloat middleY;
@property (nonatomic, readonly) CGPoint middlePoint;

@end

