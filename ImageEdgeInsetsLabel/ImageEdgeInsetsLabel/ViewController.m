//
//  ViewController.m
//  ImageEdgeInsetsLabel
//
//  Created by lee on 2018/4/13.
//  Copyright © 2018年 首约科技（北京）有限公司 Inc. All rights reserved.
//

#import "ViewController.h"
#import "ImageEdgeInsetsLabel.h"
#import "HexColors.h"
#import "UIView+Rect.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 15, 15)];
        imageView.image        = [UIImage imageNamed:@"phone_orange"];
        imageView.userInteractionEnabled = YES;
        UITapGestureRecognizer * recognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap)];
        [imageView addGestureRecognizer:recognizer];
        
        ImageEdgeInsetsLabel *label = [ImageEdgeInsetsLabel new];
        label.direction            = kImage_Left;
        label.gap                  = 5;
        label.iconView             = imageView;
        label.textColor            = [UIColor colorWithHexString:@"FFA824"];
        label.numberOfLines = 0;
        label.lineBreakMode = NSLineBreakByWordWrapping;
        [label sizeToFitWithText:@"15910514636\n15910514636\n15910514636"];
        
        label.center   = self.view.center;
        label.centerY -= 100;
        label.userInteractionEnabled = YES;
        
        [self.view addSubview:label];
    }
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)tap{
    NSLog(@"点击了图片");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
