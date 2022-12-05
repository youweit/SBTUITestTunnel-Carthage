//
//  NSString+FileNames.m
//  DTXObjectiveCHelpers
//
//  Created by Leo Natan (Wix) on 12/07/2017.
//  Copyright © 2017-2020 Wix. All rights reserved.
//

#if DEBUG
    #ifndef ENABLE_UITUNNEL
        #define ENABLE_UITUNNEL 1
    #endif
#endif

#if ENABLE_UITUNNEL

#import "NSString+FileNames.h"

@implementation NSString (FileNames)

+ (NSString *)_sanitizeFileNameString:(NSString *)fileName {
	NSCharacterSet* illegalFileNameCharacters = [NSCharacterSet characterSetWithCharactersInString:@":/\\?%*|\"<>"];
	return [[fileName componentsSeparatedByCharactersInSet:illegalFileNameCharacters] componentsJoinedByString:@"_"];
}

- (NSString *)stringBySanitizingForFileName
{
	return [NSString _sanitizeFileNameString:self];
}

@end

#endif
