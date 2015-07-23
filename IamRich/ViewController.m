//
//  ViewController.m
//  IamRich
//
//  Created by admin on 7/23/15.
//  Copyright (c) 2015 triocviet. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *ruby;
@property (weak, nonatomic) IBOutlet UILabel *iamRich;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.ruby.alpha = 0;
    self.iamRich.alpha = 0;
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"ruby's alpha = %1.0f", self.ruby.alpha);
    [UIView animateWithDuration:3 animations:^{
        self.ruby.alpha = 1;
        NSLog(@"ruby's alpha = %1.0f", self.ruby.alpha);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:2 animations:^{
            self.iamRich.center = CGPointMake(self.iamRich.center.x, 450);
            self.iamRich.alpha = 1;
            
        } completion:nil];
    }];
}

@end
