//
//  ViewController.m
//  WhatsAppKitDemo
//
//  Created by Fawkes Wei on 7/18/13.
//  Copyright (c) 2013 Fawkes Wei. All rights reserved.
//

#import "ViewController.h"

#import "WhatsAppKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog([WhatsAppKit isWhatsAppInstalled]? @"installed" : @"not installed");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)launchWhatsApp:(UIButton *)sender {
    if ([WhatsAppKit isWhatsAppInstalled]) {
        [WhatsAppKit launchWhatsApp];
    }
}

- (IBAction)launchWhatsAppWithMessage:(UIButton *)sender {
    if ([WhatsAppKit isWhatsAppInstalled]) {
        [WhatsAppKit launchWhatsAppWithMessage:@"this is demo message"];
    }
}

@end
