//
//  WhatsAppKit.m
//  WhatsAppKitDemo
//
//  Created by Fawkes Wei on 7/18/13.
//  Copyright (c) 2013 Fawkes Wei. All rights reserved.
//

#import "WhatsAppKit.h"
#import "NSString+WhatsAppKit.h"

NSString * const WhatsAppURLScheme = @"whatsapp://?";

@implementation WhatsAppKit

+ (BOOL)isWhatsAppInstalled {
    return [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:WhatsAppURLScheme]];
}

+ (void)launchWhatsApp {
    [WhatsAppKit launchWhatsAppWithMessage:nil];
}

+ (void)launchWhatsAppWithMessage:(NSString *)message {
    NSMutableString *urlString = [NSMutableString stringWithFormat:@"%@send?", WhatsAppURLScheme];
    
    if ([message length] != 0) {
        [urlString appendFormat:@"text=%@&", [message urlEncode]];
    }
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString]];
}

@end
