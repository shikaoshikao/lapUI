//
//  ViewController.m
//  lap-ui
//
//  Created by yoshikik on 2015/11/26.
//  Copyright (c) 2015年 Yoshiki Kawakita. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIButton *btn= [UIButton  buttonWithType:UIButtonTypeRoundedRect];
//    [btn setFrame:CGRectMake(0.0, 0.0, 100.0, 50.0)];
//    [btn setCenter:CGPointMake(160.0, 200.0)];
//    [btn setTitle:@"Welcome" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(startAnimation:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)viewDidAppear:(BOOL)animated{

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

@end
