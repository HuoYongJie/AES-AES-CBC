//
//  zhSecurityUtil.h
//  PasswordLock
//
//  Created by csip on 14-10-11.
//  Copyright (c) 2014年 csip. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SecurityUtil : NSObject
+(NSData*)encryptAESData:(NSString*)string;
+(NSString*)decryptAESData:(NSData*)data;
@end
