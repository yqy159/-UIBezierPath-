//
//  ViewController.m
//  UIBezierPath测试
//
//  Created by Yqy on 2018/3/25.
//  Copyright © 2018年 sgay. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"

@interface ViewController ()<TestViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TestView *view = [[TestView alloc] init];
    view.frame = CGRectMake(0, 0, 300, 300);
    view.delegate = self;
    view.center = self.view.center;
    view.backgroundColor = [UIColor clearColor];
    [self .view addSubview:view];
}

- (void)TestViewDidSelectView:(TestView *)view withPosition:(SelectButtonPosition)selectPosition {
    
    switch (selectPosition) {
        case SelectButtonPosition_TopLeft:{
            NSLog(@"上左");
        }
            break;
        case SelectButtonPosition_TopRight:{
            NSLog(@"上右");
        }
            break;
        case SelectButtonPosition_MiddleLeft:{
            NSLog(@"中左");
        }
            break;
        case SelectButtonPosition_MiddleRight:{
            NSLog(@"中右");
        }
            break;
        case SelectButtonPosition_BottomLeft:{
            NSLog(@"下左");
        }
            break;
        case SelectButtonPosition_BottomRight:{
            NSLog(@"下右");
        }
            break;
        case SelectButtonPosition_Center:{
            NSLog(@"中");
        }
            break;
        default:
            break;
    }
}

@end
