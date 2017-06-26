//
//  retrieveViewController.m
//  dneglu
//
//  Created by sighting on 2017/6/24.
//  Copyright © 2017年 com.sunfeh. All rights reserved.
//

#import "retrieveViewController.h"
#import "UIButton+extension.h"
#import "UITextField+extension.h"

@interface retrieveViewController ()

@end

@implementation retrieveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    [self setRetrieveViewUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setRetrieveViewUI{

    //设置背景颜色
    self.view.backgroundColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1.0];
    
    //设置标题
    self.title = @"重置密码";
    
    //输入手机号码框
    UITextField * phoneNumberText = [UITextField CreatTextFiedWithPlaceholder:@"请输入手机号" PlaceholderFontSize:14.0 AndBackgroundColor:[UIColor whiteColor]];
    
    phoneNumberText.frame = CGRectMake(20, self.navigationController.navigationBar.frame.size.height + 30, 150, 40);
    
    // 发送验证码按钮
    UIButton * confirmationBtn = [UIButton CreatbuttonWithBackgroundImage:nil Image:nil AndTitle:@"发送验证码" TitleColor:[UIColor whiteColor] TitleFontSize:14.0 ];
    
    confirmationBtn.frame = CGRectMake(phoneNumberText.frame.origin.x +phoneNumberText.frame.size.width +10,self.navigationController.navigationBar.frame.size.height + 30, 100, 40);
    [confirmationBtn setBackgroundColor:[UIColor blueColor]];
    
    //输入验证码框
    UITextField *  confirmationText = [UITextField CreatTextFiedWithPlaceholder:@"请输入你的验证码" PlaceholderFontSize:14.0 AndBackgroundColor:[UIColor whiteColor]];
    confirmationText.frame = CGRectMake(20, self.navigationController.navigationBar.frame.size.height + 80, self.view.bounds.size.width - 40, 40);
    
    //输入新密码框
    UITextField *  newPassWordText = [UITextField CreatTextFiedWithPlaceholder:@"新密码" PlaceholderFontSize:14.0 AndBackgroundColor:[UIColor whiteColor]];
    
    newPassWordText.frame = CGRectMake(20, self.navigationController.navigationBar.frame.size.height + 140, self.view.bounds.size.width - 40, 40);
    
    newPassWordText.placeholder = @"新密码";
    
    //重置密码按钮
    
    UIButton *  retrieveBtn  = [UIButton CreatbuttonWithBackgroundImage:nil Image:nil AndTitle:@"重置密码"  TitleColor:[UIColor whiteColor] TitleFontSize:16.0 ];
    
    retrieveBtn.frame = CGRectMake(20, self.navigationController.navigationBar.frame.size.height + 190, self.view.bounds.size.width - 40, 40);
    
    [retrieveBtn setBackgroundColor:[UIColor blueColor]];

    [self.view addSubview:phoneNumberText];
    [self.view addSubview:confirmationBtn];
    [self.view addSubview:confirmationText];
    [self.view addSubview:newPassWordText];
    [self.view addSubview:retrieveBtn];
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
