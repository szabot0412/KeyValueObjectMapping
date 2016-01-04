//
//  DCNSNumberConverter.m
//  KeyValueObjectMapping
//
//  Created by felipowsky on 1/4/16.
//  Copyright © 2016 dchohfi. All rights reserved.
//

#import "DCNSNumberConverter.h"

@implementation DCNSNumberConverter

+ (DCNSNumberConverter *)numberConverter
{
    return [[self alloc] init];
}

- (id)transformValue:(id)value forDynamicAttribute:(DCDynamicAttribute *)attribute dictionary:(NSDictionary *)dictionary parentObject:(id)parentObject
{
    if ([value isKindOfClass:[NSString class]]) {
        value = [NSNumber numberWithDouble:[value doubleValue]];
    }
    
    return value;
}

- (id)serializeValue:(id)value forDynamicAttribute:(DCDynamicAttribute *)attribute
{
    return value;
}

- (BOOL)canTransformValueForClass:(Class)cls
{
    return [cls isSubclassOfClass:[NSNumber class]];
}

@end
