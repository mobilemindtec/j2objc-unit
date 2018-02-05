//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/TestResult.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_TestResult")
#ifdef RESTRICT_TestResult
#define INCLUDE_ALL_TestResult 0
#else
#define INCLUDE_ALL_TestResult 1
#endif
#undef RESTRICT_TestResult

#if !defined (J2ObjCUnitTestResult_) && (INCLUDE_ALL_TestResult || defined(INCLUDE_J2ObjCUnitTestResult))
#define J2ObjCUnitTestResult_

@protocol JavaUtilList;

@interface J2ObjCUnitTestResult : NSObject

+ (NSString *)SUCCESS_MESSAGE;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)className_
                    withNSString:(NSString *)methodName
                    withNSString:(NSString *)testMessage
                        withLong:(jlong)executionTime;

- (NSString *)getClassName;

- (jlong)getExecutionTime;

- (id<JavaUtilList>)getMessages;

- (NSString *)getMethodName;

- (NSString *)getTestMessage;

- (jboolean)isFailed;

- (void)setClassNameWithNSString:(NSString *)className_;

- (void)setExecutionTimeWithLong:(jlong)executionTime;

- (void)setMessagesWithJavaUtilList:(id<JavaUtilList>)messages;

- (void)setMethodNameWithNSString:(NSString *)methodName;

- (void)setTestMessageWithNSString:(NSString *)testMessage;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(J2ObjCUnitTestResult)

inline NSString *J2ObjCUnitTestResult_get_SUCCESS_MESSAGE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *J2ObjCUnitTestResult_SUCCESS_MESSAGE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(J2ObjCUnitTestResult, SUCCESS_MESSAGE, NSString *)

FOUNDATION_EXPORT void J2ObjCUnitTestResult_init(J2ObjCUnitTestResult *self);

FOUNDATION_EXPORT J2ObjCUnitTestResult *new_J2ObjCUnitTestResult_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT J2ObjCUnitTestResult *create_J2ObjCUnitTestResult_init(void);

FOUNDATION_EXPORT void J2ObjCUnitTestResult_initWithNSString_withNSString_withNSString_withLong_(J2ObjCUnitTestResult *self, NSString *className_, NSString *methodName, NSString *testMessage, jlong executionTime);

FOUNDATION_EXPORT J2ObjCUnitTestResult *new_J2ObjCUnitTestResult_initWithNSString_withNSString_withNSString_withLong_(NSString *className_, NSString *methodName, NSString *testMessage, jlong executionTime) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT J2ObjCUnitTestResult *create_J2ObjCUnitTestResult_initWithNSString_withNSString_withNSString_withLong_(NSString *className_, NSString *methodName, NSString *testMessage, jlong executionTime);

J2OBJC_TYPE_LITERAL_HEADER(J2ObjCUnitTestResult)

@compatibility_alias BrComMobilemindJ2objcUnitTestResult J2ObjCUnitTestResult;

#endif

#pragma pop_macro("INCLUDE_ALL_TestResult")
