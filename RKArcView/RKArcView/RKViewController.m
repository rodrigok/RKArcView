//
//  RKViewController.m
//  RKArcView
//
//  Created by Rodrigo K on 2/24/14.
//  Copyright (c) 2014 Rodrigo Krummenauer. All rights reserved.
//

#import "RKViewController.h"
#import "RKArkView.h"

@interface RKViewController ()

@property (weak, nonatomic) IBOutlet RKArkView *progressView;
@property (weak, nonatomic) IBOutlet RKArkView *ringView;
@property (weak, nonatomic) IBOutlet RKArkView *circleView;
@property (weak, nonatomic) IBOutlet RKArkView *pizzaView;


@end

@implementation RKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.progressView.strokeWidth = 2;
    self.progressView.percent = 75;
    
    self.ringView.strokeWidth = 2;
    
    self.circleView.strokeWidth = 40;
    self.circleView.radius = 20;
    
    self.pizzaView.strokeWidth = self.pizzaView.bounds.size.height/2;
    self.pizzaView.percent = 75;
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    
    tapGesture.numberOfTapsRequired = 1;
    [self.pizzaView addGestureRecognizer:tapGesture];
}

- (void)handleTap:(UITapGestureRecognizer *)sender {

    [UIView animateWithDuration:1000
                     animations:^{
                         ((RKArkView *) sender.view).percent = 100;
                     }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
