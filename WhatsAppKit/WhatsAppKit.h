//
//  WhatsAppKit.h
//  WhatsAppKitDemo
//
//  Created by Fawkes Wei on 7/18/13.
//  Copyright (c) 2013 Fawkes Wei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WhatsAppKit : NSObject

+ (BOOL)isWhatsAppInstalled;

+ (void)launchWhatsApp;
+ (void)launchWhatsAppWithMessage:(NSString *)message;
+ (void)launchWhatsAppWithAddressBookId:(int)addressBookId;
+ (void)launchWhatsAppWithAddressBookId:(int)addressBookId andMessage:(NSString *)message;

@end
