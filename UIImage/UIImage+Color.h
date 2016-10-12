/*
 *****************************************************************************
 * Copyright (C) 2005-2015 UC Mobile Limited. All Rights Reserved
 * File			: UIImage+Color.h
 *
 * Description	: Color
 *
 * Author		: chenshuijin@ucweb.com
 *
 * History		: Creation, 16/10/12, chenshuijin@ucweb.com, Create the file
 ******************************************************************************
 **/

#import <UIKit/UIKit.h>

@interface UIImage (Color)

/**
 *  根据颜色和大小获取Image
 *
 *  @param color 颜色
 *  @param rect  位置
 *
 */
+ (UIImage *)imageWithColor:(UIColor *)color rect:(CGRect)rect;

/**
 *  根据图片和颜色返回一张加深颜色以后的图片
 */
+ (UIImage *)colorizedImageNamed:(NSString *)imageName color:(UIColor *)color;


@end
