//
//  ViewController.m
//  AES
//
//  Created by hyj on 17/2/15.
//  Copyright © 2017年 hyj. All rights reserved.
//

#import "ViewController.h"
#import "SecurityUtil.h" //AES

#import "NSString+AES128.h"//AES-CBC

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str =@"umwH8x7Yc9deQY/32/MKkDnT5iuJow1bugrmWaNIwNs=";
  

    NSData *data =[str dataUsingEncoding:NSUTF8StringEncoding];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *ss=[SecurityUtil decryptAESData:data];
    
    
    NSLog(@"%@",ss);
    
    
    //AES-CBC
    
    
    
    NSString *ss1=@"FMc6s4sSqf/8tHVtTm96Xh1kgjvyLefyjDMKaY5Uh90=";
    NSString *key=@"ae125efkk4454eef";
    NSString *iv=@"1234567890123456";
    //解密
    NSString *temp1=[NSString AES128CBC_PKCS5Padding_DecryptString:ss1 keyAndIv:key];
    NSString *temp11=[NSString AES128CBC_PKCS5Padding_DecryptString:ss1 key:key iv:iv];
    //加密
    NSString *temp2=[NSString AES128CBC_PKCS5Padding_EncryptStrig:@"123" keyAndIv:key];
    NSString *temp22=[NSString AES128CBC_PKCS5Padding_EncryptStrig:@"移动端测试" key:key iv:iv];
    NSLog(@"%@",temp1);
    NSLog(@"%@",temp2);
    
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
