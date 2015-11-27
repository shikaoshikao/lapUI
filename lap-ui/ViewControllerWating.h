//
//  ViewControllerWating.h
//  lap-ui
//
//  Created by yoshikik on 2015/11/26.
//  Copyright (c) 2015年 Yoshiki Kawakita. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerWating : UIViewController{
    int count;
    NSTimer *timer;
    IBOutlet UIImageView *iv;
    CALayer *layer;
    CABasicAnimation* animation;
    

}

@end
