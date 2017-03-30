//
//  ViewController.m
//  AlternateIconSample
//
//  Created by Leo on 2017/3/30.
//  Copyright © 2017年 Leo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)changeAppIcon:(UISegmentedControl *)sender {
    switch (sender.selectedSegmentIndex) {
        case 0:
            [[UIApplication sharedApplication] setAlternateIconName:nil completionHandler:^(NSError * _Nullable error) {
                NSLog(@"error = %@", error.localizedDescription);
            }];
            break;
        case 1:
            [[UIApplication sharedApplication] setAlternateIconName:@"Test1" completionHandler:^(NSError * _Nullable error) {
                NSLog(@"error = %@", error.localizedDescription);
            }];
            break;
        case 2:
            [[UIApplication sharedApplication] setAlternateIconName:@"Test2" completionHandler:^(NSError * _Nullable error) {
                NSLog(@"error = %@", error.localizedDescription);
            }];
            break;
            
        default:
            break;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
