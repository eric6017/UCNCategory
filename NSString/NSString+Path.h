/*
 *****************************************************************************
 * Copyright (C) 2005-2015 UC Mobile Limited. All Rights Reserved
 * File			: NSString+Path.h
 *
 * Description	: Path
 *
 * Author		: chenshuijin@ucweb.com
 *
 * History		: Creation, 16/10/12, chenshuijin@ucweb.com, Create the file
 ******************************************************************************
 **/

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>

@interface NSString (Path)

- (BOOL)fileExist;
- (BOOL)createDir;

+ (NSString *)appDocumentDir;
- (NSString *)appendDocumentDir;
- (NSURL *)appendDocumentURL;

+ (NSString *)appCacheDir;
- (NSString *)appendCacheDir;
- (NSURL *)appendCacheURL;

- (NSString *)md5Str;

@end
