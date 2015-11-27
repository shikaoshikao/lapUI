//
//  ViewControllerWating.m
//  lap-ui
//
//  Created by yoshikik on 2015/11/26.
//  Copyright (c) 2015年 Yoshiki Kawakita. All rights reserved.
//

#import "ViewControllerWating.h"

@interface ViewControllerWating ()

@end

@implementation ViewControllerWating

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    count = 20.0;
    
    // UIImageを指定した生成例
    UIImage *image = [UIImage imageNamed:@"円.png"];
    iv = [[UIImageView alloc] initWithImage:image];
    iv.frame = CGRectMake(84, 86, 600, 610);
    [self.view addSubview:iv];
    
    layer = iv.layer;
    animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    animation.toValue = [NSNumber numberWithFloat:M_PI / 2.0];
    animation.duration = 0.5;           // 0.5秒で90度回転
    animation.repeatCount = MAXFLOAT;   // 無限に繰り返す
//    animation.repeatCount = HUGE_VALF;
    animation.cumulative = YES;         // 効果を累積
    [self thread];
}

-(void)viewDidAppear:(BOOL)animated{
    [layer addAnimation:animation forKey:@"ImageViewRotation"];
    NSLog(@"開始");
}

- (void) thread {
    timer = [NSTimer scheduledTimerWithTimeInterval:(1.0)
                                             target:self
                                           selector:@selector(auto_plus:)
                                           userInfo:nil repeats:YES];
}

- (void) auto_plus:(NSTimer*)timer {    //一秒ごとに起動するメソッド
    
    count=count-1.0;
        if(count<0){
        [self performSegueWithIdentifier:@"mySegue" sender:self];
        [timer invalidate];
    }
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
