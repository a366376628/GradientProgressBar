//
//  ViewController.m
//  DemoCAGradientLayer
//
//  Created by Admin on 2018/5/15.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self demoGradient];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)demoGradient {
    //create gradient layer
    CAGradientLayer *demoLayer = [CAGradientLayer layer];
    
    //must CGColor
    demoLayer.colors = @[(id)[UIColor redColor].CGColor,
                         (id)[UIColor whiteColor].CGColor];
    demoLayer.locations = @[[NSNumber numberWithFloat:0.0],
                            [NSNumber numberWithFloat:1.0]];
    
    demoLayer.frame = CGRectMake(20, 50, 50, 500);
    
//    [self.view.layer insertSublayer:demoLayer atIndex:0];
    [self.view.layer addSublayer:demoLayer];
}
@end
