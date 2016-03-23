//
//  presentViewController.m
//  containerController
//
//  Created by zhifeng on 14-7-31.
//  Copyright (c) 2014年 zhifeng. All rights reserved.
//

#import "presentViewController.h"
#import "presentView.h"

@interface presentViewController ()

@end

@implementation presentViewController

-(void)loadView
{
    self.view = [[presentView alloc] init];
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
    self.view.backgroundColor = [UIColor redColor];
    //self.view.alpha = 0.2;
    
    UIButton *bt = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 40, 40)];
    
    [self.view addSubview:bt];
    
    bt.backgroundColor = [UIColor blackColor];
    
    [bt addTarget:self action:@selector(hello) forControlEvents:UIControlEventTouchUpInside];
    
    bt = [[UIButton alloc] initWithFrame:CGRectMake(100, 170, 40, 40)];
    
    [self.view addSubview:bt];
    
    bt.backgroundColor = [UIColor blackColor];
    
    [bt addTarget:self action:@selector(hello1) forControlEvents:UIControlEventTouchUpInside];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

-(void)viewDidAppear:(BOOL)animated
{
    //self.presentingViewController;
    [super viewDidAppear:animated];
}

-(void)hello
{
    presentViewController *p = [[presentViewController alloc] init];
    [self.view.window.rootViewController presentViewController:p animated:YES completion:nil];
}

-(UIViewController*)presentedViewController
{
    id p = [super presentedViewController];
    return [super presentedViewController];
}

-(UIViewController*)presentingViewController
{
    return [super presentingViewController];
}

-(void)hello1
{
    //self.view.window.rootViewController
    //[self.view.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];
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

@end
