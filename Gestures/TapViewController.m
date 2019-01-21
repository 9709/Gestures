//
//  TapViewController.m
//  Gestures
//
//  Created by Matthew Chan on 2019-01-17.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()

@property (nonatomic, strong) UIView *tapView;

@end

@implementation TapViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // creating UIView programatically
    CGFloat width = 100;
    CGFloat height = 100;
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height/2, width, height);
    self.tapView = [[UIView alloc] initWithFrame:frame];
    
    self.tapView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.tapView];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(changeColor:)];
    [self.tapView addGestureRecognizer:tapGesture];
}

- (void) changeColor: (UITapGestureRecognizer *)sender {
//    (self.tapView.backgroundColor == [UIColor purpleColor]) ? self.tapView.backgroundColor : [UIColor purpleColor];               // ternary expression instead of "if" statuement
   
    // alternate way above
    if (self.tapView.backgroundColor == [UIColor orangeColor]) {
        self.tapView.backgroundColor = [UIColor purpleColor];
    } else {
        self.tapView.backgroundColor = [UIColor orangeColor];
    }
//    NSLog(@"change color");
}

@end

