//
//  ViewControllerPass.m
//  lap-ui
//
//  Created by yoshikik on 2015/11/27.
//  Copyright (c) 2015年 Yoshiki Kawakita. All rights reserved.
//

#import "ViewControllerPass.h"

@interface ViewControllerPass ()

@end

@implementation ViewControllerPass

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // textFieldのDelegate通知をViewControllerで受け取る
    self.textField.delegate = self;

}


// UITextFieldのキーボード上の「Return」ボタンが押された時に呼ばれる処理
- (BOOL)textFieldShouldReturn:(UITextField *)sender {
    
    // 受け取った入力をラベルに代入
    self.mLabel.text = sender.text;
    
    // キーボードを閉じる
    [sender resignFirstResponder];
    
    return TRUE;
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
