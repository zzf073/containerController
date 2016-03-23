//
//  LeftViewController.m
//  containerController
//
//  Created by zhifeng on 14-7-31.
//  Copyright (c) 2014年 zhifeng. All rights reserved.
//

#import "LeftViewController.h"
#import "presentViewController.h"
#import "baseView.h"
#import "containerView.h"

@interface LeftViewController ()

@property(nonatomic, assign) int ctrIndex;
@property(nonatomic, strong) UIView *contentView;

-(UIViewController*)getCurrentChilden;

@end

@implementation LeftViewController

-(void)loadView
{
    self.view = [[baseView alloc] init];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)setChildersController:(NSArray *)childersController
{
    _childersController = childersController;
    UIViewController *ctr = [childersController objectAtIndex:0];
    [self addChildViewController:ctr];
    ctr.view.frame = self.contentView.bounds;
    [self.contentView addSubview:ctr.view];
}

-(void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
}

-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
}

-(UIViewController*)getCurrentChilden
{
    if (self.ctrIndex < _childersController.count) {
        return [_childersController objectAtIndex:self.ctrIndex];
    }
    return nil;
}

-(BOOL)shouldAutomaticallyForwardAppearanceMethods
{
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //self.view.frame = CGRectMake(0, 0, 320, 480);
    
    self.view.backgroundColor = [UIColor blueColor];
    
    //self.wantsFullScreenLayout = NO;
    //self.edgesForExtendedLayout = UIRectEdgeNone;
    self.contentView = [[containerView alloc] init];
    
    self.contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleRightMargin;
    
    self.contentView.backgroundColor = [UIColor redColor];
    
    self.contentView.autoresizesSubviews = YES;
    
    [self.view addSubview:self.contentView];
    
    for (int k = 0; k < 5; k++) {
        UIButton *bt = [[UIButton alloc] initWithFrame:CGRectMake(10, 60 + k*(70+10), 40, 70)];
        bt.tag = k;
        bt.backgroundColor = [UIColor redColor];
        
        [bt addTarget:self action:@selector(leftButtonHited:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:bt];
    }
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.contentView.frame = CGRectMake(70, 0, self.view.frame.size.width - 70, self.view.frame.size.height);
    [[self getCurrentChilden] viewWillAppear:animated];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [[self getCurrentChilden] viewDidAppear:animated];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [[self getCurrentChilden] viewWillDisappear:animated];
}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    [[self getCurrentChilden] viewDidDisappear:animated];
}

-(void)leftButtonHited:(UIButton*)bt
{
    if(bt.tag == 4)
    {
        presentViewController *p = [[presentViewController alloc] init];
        [self  presentViewController:p animated:YES completion:nil];
        return;
    }

    [[self getCurrentChilden] willMoveToParentViewController:nil];
    [[self getCurrentChilden] removeFromParentViewController];
    [[self getCurrentChilden].view removeFromSuperview];
    
    self.ctrIndex = bt.tag;
    
    [[self getCurrentChilden] willMoveToParentViewController:self];
    
    [self addChildViewController:[self getCurrentChilden]];
    [self getCurrentChilden].view.frame = self.contentView.bounds;
    [self.contentView addSubview:[self getCurrentChilden].view];
    [[self getCurrentChilden] didMoveToParentViewController:self];
}

-(UIViewController*)presentedViewController
{
    return [super presentedViewController];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
}

-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    [super didRotateFromInterfaceOrientation:fromInterfaceOrientation];
}

@end
