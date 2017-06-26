//
//  LoginViewController.m
//  dneglu
//
//  Created by sighting on 2017/6/24.
//  Copyright © 2017年 com.sunfeh. All rights reserved.
//

#import "LoginViewController.h"
#import "UIButton+extension.h"
#import "UITextField+extension.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpLoginView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setUpLoginView{

    self.title = @"注册";
    
    //设置背景颜色
    self.view.backgroundColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1.0];
    
    //输入手机号码框
    UITextField *  phoneNumberText = [UITextField CreatTextFiedWithPlaceholder:@"请输入手机号码" PlaceholderFontSize:14.0 AndBackgroundColor:[UIColor whiteColor]];
    
   phoneNumberText.frame = CGRectMake(20, self.navigationController.navigationBar.frame.size.height + 30, 150, 40);
    
    // 发送验证码按钮
    UIButton * confirmationBtn = [UIButton CreatbuttonWithBackgroundImage:nil Image:nil AndTitle:@"发送验证码" TitleColor:[UIColor whiteColor] TitleFontSize:14];
    
    confirmationBtn.frame = CGRectMake(phoneNumberText.frame.origin.x +phoneNumberText.frame.size.width +10,self.navigationController.navigationBar.frame.size.height + 30, 100, 40);
    
    [confirmationBtn setBackgroundColor:[UIColor blueColor]];
    
    //输入验证码框
    UITextField *  confirmationText = [UITextField CreatTextFiedWithPlaceholder:@"请输入你的验证码" PlaceholderFontSize:14.0 AndBackgroundColor:[UIColor whiteColor]];
    
    confirmationText.frame = CGRectMake(20, self.navigationController.navigationBar.frame.size.height + 80, self.view.bounds.size.width - 40, 40);

    //登录密码框
     UITextField *  loginText = [UITextField CreatTextFiedWithPlaceholder:@"登录密码" PlaceholderFontSize:14.0 AndBackgroundColor:[UIColor whiteColor]];
    
    loginText.frame = CGRectMake(20, self.navigationController.navigationBar.frame.size.height + 140, self.view.bounds.size.width - 40, 40);
    
    //邀请码(必填)
    UITextField *  inviteText = [UITextField CreatTextFiedWithPlaceholder:@"邀请码(必填)" PlaceholderFontSize:14.0 AndBackgroundColor:[UIColor whiteColor]];
    
    inviteText.frame = CGRectMake(20, self.navigationController.navigationBar.frame.size.height + 190, self.view.bounds.size.width - 40, 40);
    
    //注册按钮
    UIButton *  loginBtn = [UIButton CreatbuttonWithBackgroundImage:nil Image:nil AndTitle:@"注册" TitleColor:[UIColor whiteColor] TitleFontSize:16];
    loginBtn.frame = CGRectMake(20, self.navigationController.navigationBar.frame.size.height + 240, self.view.bounds.size.width - 40, 40);
    
    [loginBtn setBackgroundColor:[UIColor blueColor]];
    
    //条款按钮
    UIButton * provisionBtn = [UIButton CreatbuttonWithBackgroundImage:nil Image:nil AndTitle:@"我已阅读并同意<xx注册服务条款>" TitleColor:[UIColor blueColor] TitleFontSize:13];
    
    provisionBtn.frame = CGRectMake(20, self.navigationController.navigationBar.frame.size.height + 290, self.view.bounds.size.width - 40, 20);
    
    provisionBtn.backgroundColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1.0];
    
    //添加到view
    [self.view addSubview:phoneNumberText];
    [self.view addSubview:confirmationBtn];
    [self.view addSubview:confirmationText];
    [self.view addSubview:loginText];
    [self.view addSubview:inviteText];
    [self.view addSubview:loginBtn];
    [self.view addSubview:provisionBtn];
    
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
