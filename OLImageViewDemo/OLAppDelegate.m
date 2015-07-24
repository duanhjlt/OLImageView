//
//  OLAppDelegate.m
//  OLImageViewDemo
//
//  Created by Diego Torres on 9/5/12.
//  Copyright (c) 2012 Onda Labs. All rights reserved.
//

#import "OLAppDelegate.h"
#import "OLImageView.h"
#import "OLImage.h"

//#import <AFNetworking/UIImageView+AFNetworking.h>
//#import "OLImageResponseSerializer.h"
//#import "OLImageStrictResponseSerializer.h"

#import "OLImageViewDelegate.h"

#define OLDemoShowAnimationTickers 0

@interface OLAppDelegate ()<OLImageViewDelegate>

@property (nonatomic, getter=isRunning) BOOL running;

@end

@implementation OLAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UIViewController *magicAnimatedVC = [UIViewController new];
    magicAnimatedVC.title = @"OLImageView";
    
    OLImageView *Aimv = [[OLImageView alloc] initWithImage:[OLImage imageNamed:@"notEven.gif"]];
    [Aimv setFrame:CGRectMake(0, 0, 160, 160)];
    Aimv.delegate = self;
    [Aimv setUserInteractionEnabled:YES];
    [Aimv addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)]];
    [magicAnimatedVC.view addSubview:Aimv];
    
    Aimv = [[OLImageView alloc] initWithImage:[OLImage imageNamed:@"google-io"]];
    [Aimv setFrame:CGRectMake(0, 160, 160, 160)];
    Aimv.delegate = self;
    [Aimv setUserInteractionEnabled:YES];
    [Aimv addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)]];
    [magicAnimatedVC.view addSubview:Aimv];
    
    Aimv = [[OLImageView alloc] initWithImage:[OLImage imageNamed:@"fdgdf.gif"]];
    [Aimv setFrame:CGRectMake(160, 0, 160, 160)];
    Aimv.delegate = self;
    [Aimv setUserInteractionEnabled:YES];
    [Aimv addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)]];
    [magicAnimatedVC.view addSubview:Aimv];

    Aimv = [[OLImageView alloc] initWithImage:[OLImage imageNamed:@"AA.gif"]];
    Aimv.delegate = self;
    [Aimv setFrame:CGRectMake(160, 160, 160, 160)];
    [Aimv setUserInteractionEnabled:YES];
    [Aimv addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)]];
    [magicAnimatedVC.view addSubview:Aimv];
    
    self.window.rootViewController = magicAnimatedVC;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)handleTap:(UITapGestureRecognizer *)gestRecon
{
//    OLImageView *imageView = (OLImageView *)gestRecon.view;
//    if (self.isRunning) {
//        self.running = NO;
//        NSLog(@"STOP");
//        [imageView stopAnimating];
//    } else {
//        self.running = YES;
//        NSLog(@"START");
//        [imageView startAnimating];
//    }
//    self.running = !self.running;
}

@end
