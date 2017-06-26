//
//  ViewController.m
//  dneglu
//
//  Created by sighting on 2017/6/24.
//  Copyright © 2017年 com.sunfeh. All rights reserved.
//

#import "ViewController.h"
#import "retrieveViewController.h"
#import "LoginViewController.h"
#import "UIButton+extension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    // 设置标题
    self.title = @"登录";
    
    self.view.backgroundColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1.0];
    
    // 搜索1
    UISearchBar * search1 = [[UISearchBar alloc]initWithFrame:CGRectMake(20, 74, self.view.frame.size.width - 40, 30)];
    
    search1.placeholder = @"请输入手机号码                              ";
    
    search1.searchBarStyle = UISearchBarStyleDefault;
    
    //search1.tintColor = [UIColor colorWithRed:235/255.0 green:235/255.0 blue:241/255.0 alpha:1.0];
    search1.layer.borderWidth = 0;
    
//    search1.searchBarStyle = UISearchBarStyleMinimal;
    [search1 setBackgroundImage:[UIImage new]];
    
    UISearchBar * search2 = [[UISearchBar alloc]initWithFrame:CGRectMake(20, 110, self.view.frame.size.width - 40, 30)];
    
    [search1 setContentMode:UIViewContentModeLeft];
    // 搜索2
    search2.placeholder = @"请输入密码                                   ";
    
    search2.searchBarStyle = UISearchBarStyleDefault;
    [search2 setBackgroundImage:[UIImage new]];
    
    UIImage * searchimage1 = [UIImage imageNamed:@"640"];
    
    [search1 setImage:searchimage1 forSearchBarIcon:UISearchBarIconSearch state:UIControlStateNormal];
    
    [search2 setContentMode:UIViewContentModeLeft];
    
    // 登录按钮
    UIButton * logonBtn = [UIButton CreatbuttonWithBackgroundImage:nil Image:nil AndTitle:@"登录" TitleColor:[UIColor whiteColor] TitleFontSize:16.0];
    
    logonBtn.frame = CGRectMake(20, 150, self.view.frame.size.width - 40, 40);
    
    [logonBtn setTitle:@"登录" forState:UIControlStateNormal];
    
    logonBtn.backgroundColor = [UIColor blueColor];
    
    // 找回密码按钮
    UIButton * retrieveBtn = [UIButton CreatbuttonWithBackgroundImage:nil Image:nil AndTitle:@"忘记密码?" TitleColor:[UIColor blueColor] TitleFontSize:12];
    
    [retrieveBtn setBackgroundColor:[UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1.0]];
    
    retrieveBtn.frame
    = CGRectMake(20, 200, retrieveBtn.bounds.size.width, 20);
    
    // 找回按钮添加事件
    [retrieveBtn addTarget:self action:@selector(RetievePassword) forControlEvents:UIControlEventTouchUpInside];
    
    // 注册按钮
    UIButton * loginBtn = [UIButton CreatbuttonWithBackgroundImage:nil Image:nil AndTitle:@"立即注册" TitleColor:[UIColor blueColor] TitleFontSize:12];
    
    [loginBtn setBackgroundColor:[UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1.0]];
    
    loginBtn.frame
    = CGRectMake(self.view.bounds.size.width - 20 - loginBtn.bounds.size.width, 200, loginBtn.bounds.size.width, 20);
    
    // 添加事件
    [loginBtn addTarget:self action:@selector(Login) forControlEvents:UIControlEventTouchUpInside];
    // 添加
    [self.view addSubview:loginBtn];
    [self.view addSubview:retrieveBtn];
    [self.view addSubview:search2];
    [self.view addSubview:search1];
    [self.view addSubview:logonBtn];
}

-(void)RetievePassword{

    retrieveViewController * viewC = [[retrieveViewController alloc]init];
    
    [self.navigationController pushViewController:viewC animated:YES];
}

-(void)Login{

    LoginViewController * loginView = [[LoginViewController alloc]init];
    
    [self.navigationController pushViewController:loginView animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
