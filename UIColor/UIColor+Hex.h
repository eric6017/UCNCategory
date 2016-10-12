/*
 *****************************************************************************
 * Copyright (C) 2005-2015 UC Mobile Limited. All Rights Reserved
 * File			: UIColor+Hex.h
 *
 * Description	: Hex
 *
 * Author		: chenshuijin@ucweb.com
 *
 * History		: Creation, 16/10/12, chenshuijin@ucweb.com, Create the file
 ******************************************************************************
 **/

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

/**
 *  从十六进制整数串获取颜色，
 *
 *  @param hexInteger 支持0XAARRGGBB和0XRRGGBB两种格式
 *
 */
+ (UIColor *)colorWithHexInteger:(NSInteger)hexInteger;


/**
 *  从十六进制字符串获取颜色，
 *
 *  @param hexString 支持@"RRGGBB"和@"AARRGGBB"两种格式
 *
 */
+ (UIColor *)colorWithHexString: (NSString *) hexString;

@end
