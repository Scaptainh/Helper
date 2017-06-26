//
//  UITextField+extension.m
//  dneglu
//
//  Created by sighting on 2017/6/25.
//  Copyright © 2017年 com.sunfeh. All rights reserved.
//

#import "UITextField+extension.h"

@implementation UITextField (extension)

+(instancetype)CreatTextFiedWithPlaceholder:(NSString*)placeholder PlaceholderFontSize:(CGFloat)size AndBackgroundColor:(UIColor*)backcolor{

    UITextField * reserveTextField = [[UITextField alloc]init];
    
    reserveTextField.placeholder = placeholder;
    
    reserveTextField.font = [UIFont systemFontOfSize:size];
    
    reserveTextField.backgroundColor = backcolor;
    
    return reserveTextField;
}

@end
