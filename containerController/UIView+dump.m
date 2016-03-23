//
//  UIView+dump.m
//  containerController
//
//  Created by zhifeng on 14-8-5.
//  Copyright (c) 2014年 zhifeng. All rights reserved.
//

#import "UIView+dump.h"

@implementation UIView (dump)

- (void)dumpView:(UIView *)aView atIndent:(int)indent into:(NSMutableString *)outstring
{
    for (int i = 0; i < indent; i++) [outstring appendString:@"--"];
    [outstring appendFormat:@"[%2d] %@\n", indent, [[aView class] description]];
    for (UIView *view in [aView subviews])
        [self dumpView:view atIndent:indent + 1 into:outstring];
}

// Start the tree recursion at level 0 with the root view
- (NSString *) displayViews: (UIView *) aView
{
    NSMutableString *outstring = [[NSMutableString alloc] init];
    [self dumpView: self.window atIndent:0 into:outstring];
    return outstring;
}
// Show the tree
- (void)logViewTreeForMainWindow
{
    //  CFShow([self displayViews: self.window]);
    NSLog(@"%@", [self displayViews:self.window]);
}

@end
