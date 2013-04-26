//
//  ViewController.m
//  PaticalApp
//
//  Created by KitamuraShogo on 13/04/21.
//  Copyright (c) 2013年 KitamuraShogo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    CAEmitterLayer *emitterLayer = [CAEmitterLayer layer];
    CGSize size = self.view.bounds.size;
    emitterLayer.emitterPosition = CGPointMake(size.width / 2, size.height / 2);
    emitterLayer.renderMode = kCAEmitterLayerAdditive;
    [self.view.layer addSublayer:emitterLayer];
    
    CAEmitterCell *emitterCell = [CAEmitterCell emitterCell];
    UIImage *image = [UIImage imageNamed:@"particle1.png"];
    emitterCell.contents = (__bridge id)(image.CGImage);
    emitterCell.emissionLongitude = M_PI * 2;
    emitterCell.emissionRange = M_PI * 2;
    emitterCell.birthRate = 800;
    emitterCell.lifetimeRange = 1.2;
    emitterCell.velocity = 240;
    emitterCell.color = [UIColor colorWithRed:0.89
                                        green:0.56
                                         blue:0.36
                                        alpha:0.5].CGColor;
    
    emitterLayer.emitterCells = @[emitterCell];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
