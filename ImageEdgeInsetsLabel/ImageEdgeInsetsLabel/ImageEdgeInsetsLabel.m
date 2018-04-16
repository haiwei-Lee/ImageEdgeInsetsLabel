//
//  ImageEdgeInsetsLabel.m
//  ImageEdgeInsetsLabel
//
//  Created by lee on 2018/4/13.
//  Copyright © 2018年 首约科技（北京）有限公司 Inc. All rights reserved.
//

#import "ImageEdgeInsetsLabel.h"
#import "UIView+Rect.h"

@implementation ImageEdgeInsetsLabel

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines{
    UIEdgeInsets insets = self.edgeInsets;
    CGRect rect = [super textRectForBounds:UIEdgeInsetsInsetRect(bounds, insets) limitedToNumberOfLines:numberOfLines];
    rect.origin.x -= insets.left;
    rect.origin.y -= insets.top;
    rect.size.height += (insets.top+insets.bottom);
    _iconView && [_iconView isKindOfClass:[UIView class]] ?
    (rect.size.width += (insets.left + insets.right + _gap + _iconView.frame.size.width)) :
    (rect.size.width += (insets.left + insets.right));
    return rect;
}

- (void)drawTextInRect:(CGRect)rect{
    UIEdgeInsets insets = self.edgeInsets;
    if (self.iconView) {
        switch (self.direction) {
            case kImage_Left:{
                _iconView.left = insets.left;
                _iconView.centerY = self.middleY;
                insets = UIEdgeInsetsMake(insets.top, insets.left +_gap+_iconView.frame.size.width, insets.bottom, insets.right);
            }
                break;
                
            case kImage_right:{
                _iconView.right   = self.width - insets.right;
                _iconView.centerY = self.middleY;
                insets = UIEdgeInsetsMake(insets.top, insets.left, insets.bottom, insets.right  + _gap + _iconView.frame.size.width);
            }
        }
    }
    
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, insets)];
}

-(void)sizeToFitWithText:(NSString *)text{
    self.text = text;
    [self sizeToFit];
}

-(void)setIconView:(UIView *)iconView{
    _iconView = iconView;
    iconView.x   = 0.f;
    iconView.y   = 0.f;
    
    [self addSubview:iconView];
}


@end
