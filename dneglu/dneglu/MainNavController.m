//
//  MainNavController.m
//  dneglu
//
//  Created by sighting on 2017/6/24.
//  Copyright © 2017年 com.sunfeh. All rights reserved.
//

#import "MainNavController.h"

@interface MainNavController ()

@end

@implementation MainNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{

    [super pushViewController:viewController animated:YES];
    
    //替换掉leftBarButtonItem
    if (viewController.navigationItem.leftBarButtonItem== nil && [self.viewControllers count] > 1) {
        viewController.navigationItem.leftBarButtonItem =[self customLeftBackButton];
    }
}

#pragma mark - 自定义返回按钮图片
-(UIBarButtonItem*)customLeftBackButton{
    
    UIImage *image = [UIImage imageNamed:@"640"];
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [backButton sizeToFit];
    
    [backButton setBackgroundImage:image
                          forState:UIControlStateNormal];
    
    [backButton addTarget:self
                   action:@selector(popself)
         forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    
    return backItem;
}

-(void)popself
{
    [self popViewControllerAnimated:YES];
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
