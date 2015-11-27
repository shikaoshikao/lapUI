//
//  ViewControllerPreview.m
//  lap-ui
//
//  Created by yoshikik on 2015/11/27.
//  Copyright (c) 2015年 Yoshiki Kawakita. All rights reserved.
//

#import "ViewControllerPreview.h"

@interface ViewControllerPreview ()

@end

@implementation ViewControllerPreview

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [btn addTarget:self action:@selector(startAnimation:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [self startAnimation:btn];
}

-(void)startAnimation:(id)sender{
    UIButton *btn = (UIButton *)sender;
    
    //アニメーションの対象となるコンテキスト
    CGContextRef context = UIGraphicsGetCurrentContext();
    [UIView beginAnimations:nil context:context];
    //アニメーションを実行する時間
    [UIView setAnimationDuration:3.0];
    //アニメーションイベントを受け取るview
    [UIView setAnimationDelegate:self];
    //アニメーション終了後に実行される
    [UIView setAnimationDidStopSelector:@selector(endAnimation)];
    
    //TODO:
    //透明にする
    [btn setAlpha:0.0];
    
    // アニメーション開始
    [UIView commitAnimations];
}


-(void)endAnimation{
    //アニメーションの対象となるコンテキスト
    CGContextRef context = UIGraphicsGetCurrentContext();
    [UIView beginAnimations:nil context:context];
    //アニメーションを実行する時間
    [UIView setAnimationDuration:3.0];
    //アニメーションイベントを受け取るview
    [UIView setAnimationDelegate:self];
    //アニメーション終了後に実行される
    [UIView setAnimationDidStopSelector:@selector(startAnimation)];
    
    //TODO:
    //透明にする
    [btn setAlpha:1.0];
    
    // アニメーション開始
    [UIView commitAnimations];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
