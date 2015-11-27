//
//  ViewControllerPictures.m
//  lap-ui
//
//  Created by yoshikik on 2015/11/26.
//  Copyright (c) 2015年 Yoshiki Kawakita. All rights reserved.
//

#import "ViewControllerPictures.h"

@interface ViewControllerPictures ()

@end

@implementation ViewControllerPictures

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)plus{
    number=number+1;
    modnum=number % 5;
    [self change];
    
}

-(IBAction)minus{
    number=number-1;
    modnum=number % 5;
    if(number < 0){
        number = 99;
    }
    [self change];
    
}
-(IBAction)change{
    if(modnum==0){
        pic.image = [UIImage imageNamed:@"S__22618116.jpg"];
        label.text = @"2015/7/14 14:30 @ Kyoto";
    }
    else if(modnum==1){
        pic.image = [UIImage imageNamed:@"S__22618117.jpg"];
        label.text = @"2015/7/15 11:15 @ Arashiyama";
    }
    if(modnum==2){
        pic.image = [UIImage imageNamed:@"S__22618118.jpg"];
        label.text = @"2015/7/15 15:00 @ Kiyomizu";
    }
    else if(modnum==3){
        pic.image = [UIImage imageNamed:@"S__22618119.jpg"];
        label.text = @"2015/7/15 18:30 @ Kyoto";
    }
    else if(modnum==4){
        pic.image = [UIImage imageNamed:@"S__22618120.jpg"];
        label.text = @"2015/7/16 10:30 @ Kyoto";
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
