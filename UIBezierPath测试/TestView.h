//
//  TestView.h
//  UIBezierPath测试
//
//  Created by Yqy on 2018/3/25.
//  Copyright © 2018年 sgay. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TestView;

typedef enum SelectButtonPosition {
    SelectButtonPosition_TopLeft =1,          //左上
    SelectButtonPosition_TopRight =1<<1 ,     //右上
    SelectButtonPosition_MiddleLeft =1<<2 ,   //中左
    SelectButtonPosition_MiddleRight =1<<3,   //中右
    SelectButtonPosition_Center =1<<4,        //中间
    SelectButtonPosition_BottomLeft =1<<5,    //下左
    SelectButtonPosition_BottomRight =1<<6,   //下右
    SelectButtonPosition_BottomCover =1<<7,   //底部凹槽的遮盖层
}SelectButtonPosition;

@protocol TestViewDelegate <NSObject>

- (void)TestViewDidSelectView:(TestView *)view withPosition:(SelectButtonPosition)selectPosition;

@end

@interface TestView : UIView

// 获取选中的位置
@property (nonatomic) enum SelectButtonPosition selectButtonPosition;

@property (nonatomic, weak) id<TestViewDelegate> delegate;

@end
