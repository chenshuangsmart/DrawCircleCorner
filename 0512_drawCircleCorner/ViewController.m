//
//  ViewController.m
//  0512_drawCircleCorner
//
//  Created by cs on 2018/5/12.
//  Copyright © 2018年 cs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self drawLeftTopCircleCorner];
    [self drawRightTopCircleCorner];
    [self drawTopCircleCorner];
}

- (void)drawLeftTopCircleCorner {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view.center = CGPointMake(self.view.bounds.size.width * 0.25, self.view.bounds.size.height * 0.25);
    view.backgroundColor = [UIColor redColor];
    view.layer.masksToBounds = YES;
    
    //这里设置需要绘制的圆角
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:view.bounds
                                                   byRoundingCorners:UIRectCornerTopLeft//左上角
                                                         cornerRadii:CGSizeMake(25, 25)];//设置圆角大小，弧度为3
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = view.bounds;
    maskLayer.path = maskPath.CGPath;
    view.layer.mask = maskLayer;
    [self.view addSubview:view];
}

- (void)drawRightTopCircleCorner {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view.center = CGPointMake(self.view.bounds.size.width * 0.75, self.view.bounds.size.height * 0.25);
    view.backgroundColor = [UIColor redColor];
    view.layer.masksToBounds = YES;
    
    //这里设置需要绘制的圆角
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:view.bounds
                                                   byRoundingCorners:UIRectCornerTopRight//右上角
                                                         cornerRadii:CGSizeMake(25, 25)];//设置圆角大小，弧度为3
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = view.bounds;
    maskLayer.path = maskPath.CGPath;
    view.layer.mask = maskLayer;
    [self.view addSubview:view];
}

- (void)drawTopCircleCorner {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view.center = CGPointMake(self.view.bounds.size.width * 0.25, self.view.bounds.size.height * 0.75);
    view.backgroundColor = [UIColor redColor];
    view.layer.masksToBounds = YES;
    
    //这里设置需要绘制的圆角
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:view.bounds
                                                   byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight//
                                                         cornerRadii:CGSizeMake(25, 25)];//设置圆角大小，弧度为3
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = view.bounds;
    maskLayer.path = maskPath.CGPath;
    view.layer.mask = maskLayer;
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
