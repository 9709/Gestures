//
//  PanViewController.m
//  Gestures
//
//  Created by Matthew Chan on 2019-01-17.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController
- (IBAction)redViewPanned:(UIPanGestureRecognizer *)sender {
    
    // locationInView method
//    CGPoint locationInView = [sender locationInView:self.view];
//    sender.view.center = locationInView;
    
    // translationInView method
    CGPoint translationInView = [sender translationInView:self.view];
    CGPoint oldCenter = sender.view.center;
    
    CGPoint newCenter = CGPointMake(oldCenter.x + translationInView.x, oldCenter.y + translationInView.y);
    sender.view.center = newCenter;
    
    [sender setTranslation:CGPointZero inView:self.view];       // setting translationInView back to 0
    
}


@end
