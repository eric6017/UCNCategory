/*
 *****************************************************************************
 * Copyright (C) 2005-2015 UC Mobile Limited. All Rights Reserved
 * File			: NSObject+Utils.h
 *
 * Description	: Utils
 *
 * Author		: chenshuijin@ucweb.com
 *
 * History		: Creation, 16/10/12, chenshuijin@ucweb.com, Create the file
 ******************************************************************************
 **/

#import <Foundation/Foundation.h>

@interface NSObject (Utils)

/**
 *  判断当前对象是否是有实际内容
 */
- (BOOL)isValid;

/**
 *  归档至Document文件夹
 *
 *  @param fileName 文件名
 *
 *  @return 归档是否成功
 */
- (BOOL)archiveToFileName:(NSString *)fileName;

/**
 *  从Document文件夹解档文件
 *
 *  @return 对象
 */
- (id)unArchiveFromFileName;

/**
 *  归档至路径
 *
 *  @param filePath 路径
 *
 *  @return 归档成功与否
 */
- (BOOL)archiveToFilePath:(NSString *)filePath;

/**
 *  从指定路径解档
 *
 *  @return 对象
 */
- (id)unArchiveFromFilePath;


@end
