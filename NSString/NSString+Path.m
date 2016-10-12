/*
 *****************************************************************************
 * Copyright (C) 2005-2015 UC Mobile Limited. All Rights Reserved
 * File			: NSString+Path.m
 *
 * Description	: Path
 *
 * Author		: chenshuijin@ucweb.com
 *
 * History		: Creation, 16/10/12, chenshuijin@ucweb.com, Create the file
 ******************************************************************************
 **/

#import "NSString+Path.h"

static NSString *const kUCNDocumentPath = @"UCNDocumentPath";
static NSString *const kUCNCachePath = @"UCNCachePath";

@implementation NSString (Path)

#pragma mark - 文件创建以及是否存在判断
- (BOOL)fileExist
{
    return [[NSFileManager defaultManager] fileExistsAtPath:self];
}

- (BOOL)createDir
{
    return [[NSFileManager defaultManager] createDirectoryAtPath:self withIntermediateDirectories:YES attributes:nil error:nil];
}

#pragma mark - Cache路径相关
+ (NSString *)appCacheDir
{
    NSString *cachesDir = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)[0] stringByAppendingPathComponent:[kUCNCachePath md5Str]];
    if (![cachesDir fileExist]) [cachesDir createDir];
    return cachesDir;
}

- (NSString *)appendCacheDir
{
    return [[self.class appCacheDir] stringByAppendingPathComponent:self];
}

- (NSURL *)appendCacheURL
{
    return [NSURL fileURLWithPath:[self appendCacheDir]];
}

#pragma mark - Document路径相关
+ (NSString *)appDocumentDir
{
    NSString *docDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0] stringByAppendingPathComponent:[kUCNDocumentPath md5Str]];
    if ([docDir fileExist]) [docDir createDir];
    return docDir;
}

- (NSString *)appendDocumentDir
{
    return [[self.class appDocumentDir] stringByAppendingPathComponent:self];
}

- (NSURL *)appendDocumentURL
{
    return [NSURL fileURLWithPath:[self appendDocumentDir]];
}

#pragma mark - 其他辅助功能
- (NSString *)md5Str
{
    const char *str = [self UTF8String];
    unsigned char r[CC_MD5_DIGEST_LENGTH];
    CC_MD5(str, (CC_LONG)strlen(str), r);
    NSString *filename = [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", r[0], r[1], r[2], r[3], r[4], r[5], r[6], r[7], r[8], r[9], r[10], r[11], r[12], r[13], r[14], r[15]];
    return filename;
}

@end
