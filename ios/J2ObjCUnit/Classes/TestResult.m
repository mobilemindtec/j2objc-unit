//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/TestResult.java
//

#include "J2ObjC_source.h"
#include "TestResult.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface J2ObjCUnitTestResult () {
 @public
  NSString *className__;
  NSString *methodName_;
  NSString *testMessage_;
  jlong executionTime_;
  id<JavaUtilList> messages_;
}

@end

J2OBJC_FIELD_SETTER(J2ObjCUnitTestResult, className__, NSString *)
J2OBJC_FIELD_SETTER(J2ObjCUnitTestResult, methodName_, NSString *)
J2OBJC_FIELD_SETTER(J2ObjCUnitTestResult, testMessage_, NSString *)
J2OBJC_FIELD_SETTER(J2ObjCUnitTestResult, messages_, id<JavaUtilList>)

NSString *J2ObjCUnitTestResult_SUCCESS_MESSAGE = @"test passed";

@implementation J2ObjCUnitTestResult

+ (NSString *)SUCCESS_MESSAGE {
  return J2ObjCUnitTestResult_SUCCESS_MESSAGE;
}

- (instancetype)initPackagePrivate {
  J2ObjCUnitTestResult_initPackagePrivate(self);
  return self;
}

- (instancetype)initPackagePrivateWithNSString:(NSString *)className_
                                  withNSString:(NSString *)methodName
                                  withNSString:(NSString *)testMessage
                                      withLong:(jlong)executionTime {
  J2ObjCUnitTestResult_initPackagePrivateWithNSString_withNSString_withNSString_withLong_(self, className_, methodName, testMessage, executionTime);
  return self;
}

- (NSString *)getClassName {
  return className__;
}

- (jlong)getExecutionTime {
  return executionTime_;
}

- (NSString *)getMethodName {
  return methodName_;
}

- (NSString *)getTestMessage {
  return testMessage_;
}

- (jboolean)isFailed {
  return ![((NSString *) nil_chk(self->testMessage_)) isEqual:J2ObjCUnitTestResult_SUCCESS_MESSAGE];
}

- (void)setClassNameWithNSString:(NSString *)className_ {
  self->className__ = className_;
}

- (void)setExecutionTimeWithLong:(jlong)executionTime {
  self->executionTime_ = executionTime;
}

- (void)setMethodNameWithNSString:(NSString *)methodName {
  self->methodName_ = methodName;
}

- (void)setTestMessageWithNSString:(NSString *)testMessage {
  self->testMessage_ = testMessage;
}

- (id<JavaUtilList>)getMessages {
  return messages_;
}

- (void)setMessagesWithJavaUtilList:(id<JavaUtilList>)messages {
  self->messages_ = messages;
}

- (NSString *)description {
  return JreStrcat("$C$", self->className__, '.', self->methodName_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 2, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 7, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, 10, -1, -1 },
    { NULL, "LNSString;", 0x1, 11, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivate);
  methods[1].selector = @selector(initPackagePrivateWithNSString:withNSString:withNSString:withLong:);
  methods[2].selector = @selector(getClassName);
  methods[3].selector = @selector(getExecutionTime);
  methods[4].selector = @selector(getMethodName);
  methods[5].selector = @selector(getTestMessage);
  methods[6].selector = @selector(isFailed);
  methods[7].selector = @selector(setClassNameWithNSString:);
  methods[8].selector = @selector(setExecutionTimeWithLong:);
  methods[9].selector = @selector(setMethodNameWithNSString:);
  methods[10].selector = @selector(setTestMessageWithNSString:);
  methods[11].selector = @selector(getMessages);
  methods[12].selector = @selector(setMessagesWithJavaUtilList:);
  methods[13].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "SUCCESS_MESSAGE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 12, -1, -1 },
    { "className__", "LNSString;", .constantValue.asLong = 0, 0x2, 13, -1, -1, -1 },
    { "methodName_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "testMessage_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "executionTime_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "messages_", "LJavaUtilList;", .constantValue.asLong = 0, 0x2, -1, -1, 14, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSString;LNSString;J", "setClassName", "LNSString;", "setExecutionTime", "J", "setMethodName", "setTestMessage", "()Ljava/util/List<Ljava/lang/String;>;", "setMessages", "LJavaUtilList;", "(Ljava/util/List<Ljava/lang/String;>;)V", "toString", &J2ObjCUnitTestResult_SUCCESS_MESSAGE, "className", "Ljava/util/List<Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _J2ObjCUnitTestResult = { "TestResult", "br.com.mobilemind.j2objc.unit", ptrTable, methods, fields, 7, 0x0, 14, 6, -1, -1, -1, -1, -1 };
  return &_J2ObjCUnitTestResult;
}

@end

void J2ObjCUnitTestResult_initPackagePrivate(J2ObjCUnitTestResult *self) {
  NSObject_init(self);
  self->messages_ = new_JavaUtilArrayList_init();
}

J2ObjCUnitTestResult *new_J2ObjCUnitTestResult_initPackagePrivate() {
  J2OBJC_NEW_IMPL(J2ObjCUnitTestResult, initPackagePrivate)
}

J2ObjCUnitTestResult *create_J2ObjCUnitTestResult_initPackagePrivate() {
  J2OBJC_CREATE_IMPL(J2ObjCUnitTestResult, initPackagePrivate)
}

void J2ObjCUnitTestResult_initPackagePrivateWithNSString_withNSString_withNSString_withLong_(J2ObjCUnitTestResult *self, NSString *className_, NSString *methodName, NSString *testMessage, jlong executionTime) {
  NSObject_init(self);
  self->messages_ = new_JavaUtilArrayList_init();
  self->className__ = className_;
  self->methodName_ = methodName;
  self->testMessage_ = testMessage;
  self->executionTime_ = executionTime;
}

J2ObjCUnitTestResult *new_J2ObjCUnitTestResult_initPackagePrivateWithNSString_withNSString_withNSString_withLong_(NSString *className_, NSString *methodName, NSString *testMessage, jlong executionTime) {
  J2OBJC_NEW_IMPL(J2ObjCUnitTestResult, initPackagePrivateWithNSString_withNSString_withNSString_withLong_, className_, methodName, testMessage, executionTime)
}

J2ObjCUnitTestResult *create_J2ObjCUnitTestResult_initPackagePrivateWithNSString_withNSString_withNSString_withLong_(NSString *className_, NSString *methodName, NSString *testMessage, jlong executionTime) {
  J2OBJC_CREATE_IMPL(J2ObjCUnitTestResult, initPackagePrivateWithNSString_withNSString_withNSString_withLong_, className_, methodName, testMessage, executionTime)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(J2ObjCUnitTestResult)
