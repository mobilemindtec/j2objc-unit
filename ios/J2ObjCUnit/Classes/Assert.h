//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/Assert.java
//

#ifndef Assert_H
#define Assert_H

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#include "J2ObjC_header.h"

@class IOSClass;
@protocol J2ObjCUnitExceptionDelegate;

@interface J2ObjCUnitAssert : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

+ (void)areEqualWithId:(id)obj1
                withId:(id)obj2;

+ (void)areEqualWithId:(id)obj1
                withId:(id)obj2
          withNSString:(NSString *)message;

+ (void)areNoEqualWithId:(id)obj1
                  withId:(id)obj2;

+ (void)areNoEqualWithId:(id)obj1
                  withId:(id)obj2
            withNSString:(NSString *)message;

+ (void)fail;

+ (void)failWithNSString:(NSString *)message;

+ (void)isFalseWithId:(id)state;

+ (void)isFalseWithId:(id)state
         withNSString:(NSString *)message;

+ (void)isGreaterWithId:(id)obj1
                 withId:(id)obj2;

+ (void)isGreaterWithId:(id)obj1
                 withId:(id)obj2
           withNSString:(NSString *)message;

+ (void)isGreaterOrEqualWithId:(id)obj1
                        withId:(id)obj2;

+ (void)isGreaterOrEqualWithId:(id)obj1
                        withId:(id)obj2
                  withNSString:(NSString *)message;

+ (void)isLessWithId:(id)obj1
              withId:(id)obj2;

+ (void)isLessWithId:(id)obj1
              withId:(id)obj2
        withNSString:(NSString *)message;

+ (void)isLessOrEqualWithId:(id)obj1
                     withId:(id)obj2;

+ (void)isLessOrEqualWithId:(id)obj1
                     withId:(id)obj2
               withNSString:(NSString *)message;

+ (void)isNotNullWithId:(id)obj;

+ (void)isNotNullWithId:(id)obj
           withNSString:(NSString *)message;

+ (void)isNullWithId:(id)obj;

+ (void)isNullWithId:(id)obj
        withNSString:(NSString *)message;

+ (void)isTrueWithBoolean:(jboolean)state;

+ (void)isTrueWithId:(id)state
        withNSString:(NSString *)message;

+ (void)shouldThrowWithIOSClass:(IOSClass *)expectedException
withJ2ObjCUnitExceptionDelegate:(id<J2ObjCUnitExceptionDelegate>)operation;

+ (void)shouldThrowWithIOSClass:(IOSClass *)expectedException
                   withNSString:(NSString *)message
withJ2ObjCUnitExceptionDelegate:(id<J2ObjCUnitExceptionDelegate>)operation;

@end

J2OBJC_EMPTY_STATIC_INIT(J2ObjCUnitAssert)

FOUNDATION_EXPORT void J2ObjCUnitAssert_init(J2ObjCUnitAssert *self);

FOUNDATION_EXPORT J2ObjCUnitAssert *new_J2ObjCUnitAssert_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT J2ObjCUnitAssert *create_J2ObjCUnitAssert_init(void);

FOUNDATION_EXPORT void J2ObjCUnitAssert_fail(void);

FOUNDATION_EXPORT void J2ObjCUnitAssert_failWithNSString_(NSString *message);

FOUNDATION_EXPORT void J2ObjCUnitAssert_areEqualWithId_withId_(id obj1, id obj2);

FOUNDATION_EXPORT void J2ObjCUnitAssert_areEqualWithId_withId_withNSString_(id obj1, id obj2, NSString *message);

FOUNDATION_EXPORT void J2ObjCUnitAssert_areNoEqualWithId_withId_(id obj1, id obj2);

FOUNDATION_EXPORT void J2ObjCUnitAssert_areNoEqualWithId_withId_withNSString_(id obj1, id obj2, NSString *message);

FOUNDATION_EXPORT void J2ObjCUnitAssert_isFalseWithId_(id state);

FOUNDATION_EXPORT void J2ObjCUnitAssert_isFalseWithId_withNSString_(id state, NSString *message);

FOUNDATION_EXPORT void J2ObjCUnitAssert_isTrueWithBoolean_(jboolean state);

FOUNDATION_EXPORT void J2ObjCUnitAssert_isTrueWithId_withNSString_(id state, NSString *message);

FOUNDATION_EXPORT void J2ObjCUnitAssert_isNullWithId_(id obj);

FOUNDATION_EXPORT void J2ObjCUnitAssert_isNullWithId_withNSString_(id obj, NSString *message);

FOUNDATION_EXPORT void J2ObjCUnitAssert_isNotNullWithId_(id obj);

FOUNDATION_EXPORT void J2ObjCUnitAssert_isNotNullWithId_withNSString_(id obj, NSString *message);

FOUNDATION_EXPORT void J2ObjCUnitAssert_isGreaterWithId_withId_(id obj1, id obj2);

FOUNDATION_EXPORT void J2ObjCUnitAssert_isGreaterWithId_withId_withNSString_(id obj1, id obj2, NSString *message);

FOUNDATION_EXPORT void J2ObjCUnitAssert_isGreaterOrEqualWithId_withId_(id obj1, id obj2);

FOUNDATION_EXPORT void J2ObjCUnitAssert_isGreaterOrEqualWithId_withId_withNSString_(id obj1, id obj2, NSString *message);

FOUNDATION_EXPORT void J2ObjCUnitAssert_isLessWithId_withId_(id obj1, id obj2);

FOUNDATION_EXPORT void J2ObjCUnitAssert_isLessWithId_withId_withNSString_(id obj1, id obj2, NSString *message);

FOUNDATION_EXPORT void J2ObjCUnitAssert_isLessOrEqualWithId_withId_(id obj1, id obj2);

FOUNDATION_EXPORT void J2ObjCUnitAssert_isLessOrEqualWithId_withId_withNSString_(id obj1, id obj2, NSString *message);

FOUNDATION_EXPORT void J2ObjCUnitAssert_shouldThrowWithIOSClass_withJ2ObjCUnitExceptionDelegate_(IOSClass *expectedException, id<J2ObjCUnitExceptionDelegate> operation);

FOUNDATION_EXPORT void J2ObjCUnitAssert_shouldThrowWithIOSClass_withNSString_withJ2ObjCUnitExceptionDelegate_(IOSClass *expectedException, NSString *message, id<J2ObjCUnitExceptionDelegate> operation);

J2OBJC_TYPE_LITERAL_HEADER(J2ObjCUnitAssert)

@compatibility_alias BrComMobilemindJ2objcUnitAssert J2ObjCUnitAssert;


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#endif // Assert_H
