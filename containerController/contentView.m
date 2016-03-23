//
//  contentView.m
//  containerController
//
//  Created by zhifeng on 14-8-4.
//  Copyright (c) 2014年 zhifeng. All rights reserved.
//

#import "contentView.h"
#import "UIView+dump.h"

@implementation contentView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    }
    return self;
}

-(void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
}

-(void)layoutSubviews
{
    [super layoutSubviews];
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
