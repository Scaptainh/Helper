//
//  UIButton+extension.m
//  dneglu
//
//  Created by sighting on 2017/6/25.
//  Copyright © 2017年 com.sunfeh. All rights reserved.
//

#import "UIButton+extension.h"

@implementation UIButton (extension)

+(instancetype)CreatbuttonWithBackgroundImage:(UIImage*)backImage Image:(UIImage *)image AndTitle:(NSString*)title TitleColor:(UIColor*)color TitleFontSize:(CGFloat)size{
    
    // 创建button
    UIButton * reserveBnt = [[UIButton alloc]init];
    
    // 设置背景图片
    [reserveBnt setBackgroundImage:backImage forState:UIControlStateNormal];
    
    // 设置图片
    [reserveBnt setImage:image forState:UIControlStateNormal];
    
    // 文字
    [reserveBnt setTitle:title forState:UIControlStateNormal];
    
    // 设置字体颜色
    [reserveBnt setTitleColor:color forState:UIControlStateNormal];
    
    // 字体大小
    reserveBnt.titleLabel.font = [UIFont systemFontOfSize:size];
    
    // 按钮大小
    [reserveBnt sizeToFit];
    
    return reserveBnt;
}

@end
