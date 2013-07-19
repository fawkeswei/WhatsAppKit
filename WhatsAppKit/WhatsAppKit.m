//
//  WhatsAppKit.m
//  WhatsAppKitDemo
//
//  Created by Fawkes Wei on 7/18/13.
//  Copyright (c) 2013 Fawkes Wei. All rights reserved.
//

#import "WhatsAppKit.h"
#import "NSString+WhatsAppKit.h"

#define kCONST_PREFIX @"whatsapp://"

@implementation WhatsAppKit

+ (BOOL)isWhatsAppInstalled {
    return [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:kCONST_PREFIX]];
}

+ (void)launchWhatsApp {
    [WhatsAppKit launchWhatsAppWithMessage:nil];
}

+ (void)launchWhatsAppWithMessage:(NSString *)message {
    [WhatsAppKit launchWhatsAppWithAddressBookId:-1 andMessage:message];
}

+ (void)launchWhatsAppWithAddressBookId:(int)addressBookId {
    [WhatsAppKit launchWhatsAppWithAddressBookId:addressBookId andMessage:nil];
}

+ (void)launchWhatsAppWithAddressBookId:(int)addressBookId andMessage:(NSString *)message {
    NSMutableString *urlString = [NSMutableString stringWithFormat:@"%@send?", kCONST_PREFIX];
    
    if (addressBookId > 0) {
        [urlString appendFormat:@"abid=%d&", addressBookId];
    }
    
    if ([message length] != 0) {
        [urlString appendFormat:@"text=%@&", [message urlEncode]];
    }
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString]];
}

@end
