//
//  zhSecurityUtil.m
//  PasswordLock
//
//  Created by csip on 14-10-11.
//  Copyright (c) 2014年 csip. All rights reserved.
//

#import "SecurityUtil.h"
#import "Encryption.h"
#define APP_PUBLIC_PASSWORD  @"ae125efkk4454eeff444ferfkny6o2zm"
@implementation SecurityUtil
#pragma mark - AES加密
//将string转成带密码的data
+(NSData*)encryptAESData:(NSString*)string {
    //将nsstring转化为nsdata
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    //使用密码对nsdata进行加密
    NSData *encryptedData = [data AES256EncryptWithKey:APP_PUBLIC_PASSWORD];
    return encryptedData;
}

//将带密码的data转成string
+(NSString*)decryptAESData:(NSData*)data {
    //使用密码对data进行解密
    NSData *decryData = [data AES256DecryptWithKey:APP_PUBLIC_PASSWORD];
    //将解了密码的nsdata转化为nsstring
    NSString *string = [[NSString alloc] initWithData:decryData encoding:NSUTF8StringEncoding];
    return string;
}
@end
