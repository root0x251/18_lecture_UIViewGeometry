//
//  ViewController.m
//  18_lecture_UIViewGeometry
//
//  Created by Slava on 26.03.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) UIView *testView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *uiViewTestOne = [[UIView alloc] initWithFrame:CGRectMake(100, 150, 200, 50)];
//    uiViewTestOne.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:.3];
    uiViewTestOne.backgroundColor = [UIColor colorWithRed:.9 green:.1 blue:.1 alpha:.8];
    [self.view addSubview:uiViewTestOne];
    
    UIView *uiViewTestTwo = [[UIView alloc] initWithFrame:CGRectMake(80, 130, 50, 250)];
    uiViewTestTwo.backgroundColor = [UIColor colorWithRed:.0 green:1 blue:.5 alpha:.8];
    // изменение размера при изменении ориентации экрана
    uiViewTestTwo.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleWidth |
                                        UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleBottomMargin;
    [self.view addSubview:uiViewTestTwo];
    
    self.testView = uiViewTestTwo;
    // меняем индекс
    [self.view bringSubviewToFront:uiViewTestOne];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
//- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id <UIViewControllerTransitionCoordinator>)coordinator {

//    NSLog(@"\nFrame - %@ \nBounds - %@", NSStringFromCGRect(self.testView.frame), NSStringFromCGRect(self.testView.bounds));
    NSLog(@"\nFrame = %@ \nBounds = %@", NSStringFromCGRect(self.view.frame), NSStringFromCGRect(self.view.bounds));
    
    CGPoint origin = CGPointZero;
    origin = [self.view convertPoint:origin toView:self.view.window];
    NSLog(@"origin = %@", NSStringFromCGPoint(origin));
    
    
    CGRect r = self.view.bounds;
    r.origin.y = 0;
    r.origin.x = CGRectGetWidth(r) - 100;
    r.size = CGSizeMake(100, 100);
    UIView *v = [[UIView alloc] initWithFrame:r];
    v.backgroundColor = [UIColor blueColor ];
    [self.view addSubview:v];
    
}

@end
