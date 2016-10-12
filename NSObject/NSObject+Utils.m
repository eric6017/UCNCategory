/*
 *****************************************************************************
 * Copyright (C) 2005-2015 UC Mobile Limited. All Rights Reserved
 * File			: NSObject+Utils.m
 *
 * Description	: Utils
 *
 * Author		: chenshuijin@ucweb.com
 *
 * History		: Creation, 16/10/12, chenshuijin@ucweb.com, Create the file
 ******************************************************************************
 **/

#import "NSObject+Utils.h"
#import "NSString+Path.h"

static NSString *const kUCNdocumentArchivePath  =  @"UCNdocumentArchivePath";

@implementation NSObject (Utils)

#pragma mark - 判断当前对象是否是有实际内容
- (BOOL)isValid
{
    if ([self isKindOfClass:[NSNull class]])
    {
        return NO;
    }
    
    if ([self isKindOfClass:[NSString class]])
    {
        if ([(NSString *)self isEqualToString:@"(null)"])
        {
            return NO;
        }
        else
        {
            return [(NSString *)self length];
        }
    }

    if ([self isKindOfClass:[NSArray class]])
    {
        return [(NSArray *)self count];
    }
    
    if ([self isKindOfClass:[NSDictionary class]])
    {
        return [(NSDictionary *)self count];
    }

    return YES;
}

#pragma mark - 数据存档与读取
- (NSString *)setupFilePath:(NSString *)fileName
{
    NSString *filePath = [kUCNdocumentArchivePath appendDocumentDir];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:filePath])
    {
        [[NSFileManager defaultManager] createDirectoryAtPath:filePath withIntermediateDirectories:YES attributes:nil error:NULL];
    }
    
    return [filePath stringByAppendingPathComponent:fileName];
}

- (BOOL)archiveToFileName:(NSString *)fileName
{
    return [self archiveToFilePath:[self setupFilePath:fileName]];
}

- (id)unArchiveFromFileName
{
    return [[self setupFilePath:(NSString *)self] unArchiveFromFilePath];
}

- (BOOL)archiveToFilePath:(NSString *)filePath
{
    return [NSKeyedArchiver archiveRootObject:self toFile:filePath];
}

- (id)unArchiveFromFilePath
{
    return [NSKeyedUnarchiver unarchiveObjectWithFile:(NSString *)self];
}


@end
