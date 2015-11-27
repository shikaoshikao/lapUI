//
//  ViewControllerReady.m
//  lap-ui
//
//  Created by yoshikik on 2015/11/26.
//  Copyright (c) 2015年 Yoshiki Kawakita. All rights reserved.
//

#import "ViewControllerReady.h"

@interface ViewControllerReady ()

@end

@implementation ViewControllerReady
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    count = 3.0;
    [self thread];
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
        [self performSegueWithIdentifier:@"mySegue2" sender:self];
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
