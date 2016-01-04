//
//  DCNSStringConverter.m
//  KeyValueObjectMapping
//
//  Created by felipowsky on 1/4/16.
//  Copyright © 2016 dchohfi. All rights reserved.
//

#import "DCNSStringConverter.h"

@implementation DCNSStringConverter

+ (DCNSStringConverter *)stringConverter
{
    return [[self alloc] init];
}

- (id)transformValue:(id)value forDynamicAttribute:(DCDynamicAttribute *)attribute dictionary:(NSDictionary *)dictionary parentObject:(id)parentObject
{
    if ([value isKindOfClass:NSNumber.class]) {
        return [value stringValue];
    }
    
    return value;
}

- (id)serializeValue:(id)value forDynamicAttribute:(DCDynamicAttribute *)attribute
{
    return value;
}

- (BOOL)canTransformValueForClass:(Class)cls
{
    return [cls isSubclassOfClass:[NSString class]];
}

@end
