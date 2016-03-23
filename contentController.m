//
//  contentController.m
//  containerController
//
//  Created by zhifeng on 14-7-31.
//  Copyright (c) 2014年 zhifeng. All rights reserved.
//

#import "contentController.h"
#import "contentView.h"

@interface contentController ()

@property(nonatomic, strong)UILabel *label;

@end

@implementation contentController

-(void)loadView
{
    self.view = [[contentView alloc] init];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UILabel *noteLabel = [[UILabel alloc] initWithFrame:CGRectMake(90, 90, 200, 40)];
    self.view.backgroundColor = [UIColor orangeColor];
    noteLabel.backgroundColor = [UIColor greenColor];
    self.label = noteLabel;
    self.label.text = self.str;
    [self.view addSubview:self.label];
    //self.view.backgroundColor = [UIColor blueColor];
}

-(UIViewController*)presentedViewController
{
    return [super presentedViewController];
}

-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@"%@", @"viewWillAppear");
    [super viewWillAppear:animated];
}

-(void)viewDidAppear:(BOOL)animated
{
    NSLog(@"%@", @"viewDidAppear");
    //self.view.frame = self.view.superview.bounds;
    [super viewDidAppear:animated];
}

-(void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"%@", @"viewWillDisappear");
    [super viewWillDisappear:animated];
}

-(void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"%@", @"viewDidDisappear");
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)willMoveToParentViewController:(UIViewController *)parent
{
    [super willMoveToParentViewController:parent];
}

-(void)didMoveToParentViewController:(UIViewController *)parent
{
    if([self.parentViewController isEqual:parent])
        return;
    [super didMoveToParentViewController:parent];
}

-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
}

-(void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
}

-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
}

@end
