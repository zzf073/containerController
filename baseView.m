//
//  baseView.m
//  containerController
//
//  Created by zhifeng on 14-8-4.
//  Copyright (c) 2014年 zhifeng. All rights reserved.
//

#import "baseView.h"

@implementation baseView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.autoresizesSubviews = YES;
        
        [self addObserver:self forKeyPath:@"self.frame" options:NSKeyValueObservingOptionOld context:nil];
    }
    return self;
}

-(BOOL)autoresizesSubviews
{
    return YES;
}

/*-(void)layoutSubviews
{
    [super layoutSubviews];
}*/

-(void)willMoveToWindow:(UIWindow *)newWindow
{
    [super willMoveToWindow:newWindow];
}

-(void)didMoveToWindow
{
    [super didMoveToWindow];
    [self logViewTreeForMainWindow];
}

-(void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
}

-(void)setBounds:(CGRect)bounds
{
    [super setBounds:bounds];
}

-(void)setTransform:(CGAffineTransform)transform
{
    [super setTransform:transform];
}

-(void)layoutSubviews
{
    [super layoutSubviews];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"ppppp");
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
