//
//  presentView.m
//  containerController
//
//  Created by zhifeng on 14-8-4.
//  Copyright (c) 2014年 zhifeng. All rights reserved.
//

#import "presentView.h"
#import "UIView+dump.h"

@implementation presentView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor blueColor];
    }
    return self;
}

-(void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
}

-(void)willMoveToWindow:(UIWindow *)newWindow
{
    [super willMoveToWindow:newWindow];
}

-(void)willMoveToSuperview:(UIView *)newSuperview
{
    [super willMoveToSuperview:newSuperview];
}

-(void)didMoveToWindow
{
    [super didMoveToWindow];
    //[self logViewTreeForMainWindow];
}

-(void)didMoveToSuperview
{
    [super didMoveToSuperview];
    [self logViewTreeForMainWindow];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
