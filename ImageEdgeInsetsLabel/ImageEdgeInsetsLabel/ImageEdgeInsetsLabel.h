//
//  ImageEdgeInsetsLabel.h
//  ImageEdgeInsetsLabel
//
//  Created by lee on 2018/4/13.
//  Copyright © 2018年 首约科技（北京）有限公司 Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

//>>图片的位置
typedef NS_ENUM(NSInteger, SQImageEdgeDirection){
    
    kImage_Left,
    
    kImage_right
} ;

@interface ImageEdgeInsetsLabel : UILabel

@property (nonatomic, strong) UIView * iconView;//>>icon view

@property (nonatomic, assign) UIEdgeInsets edgeInsets;//>>

@property (nonatomic, assign) SQImageEdgeDirection direction;//>>icon所在的方向

@property (nonatomic, assign) CGFloat gap;

- (void)sizeToFitWithText:(NSString *)text;

@end
