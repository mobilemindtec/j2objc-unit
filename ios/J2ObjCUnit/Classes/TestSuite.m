//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/TestSuite.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "OutputDir.h"
#include "TestRunner.h"
#include "TestSuite.h"
#include "java/lang/Exception.h"
#include "java/util/HashSet.h"
#include "java/util/Set.h"
#include "java/util/logging/Level.h"
#include "java/util/logging/Logger.h"

inline id<JavaUtilSet> J2ObjCUnitTestSuite_get_testsCase(void);
inline id<JavaUtilSet> J2ObjCUnitTestSuite_set_testsCase(id<JavaUtilSet> value);
static id<JavaUtilSet> J2ObjCUnitTestSuite_testsCase;
J2OBJC_STATIC_FIELD_OBJ(J2ObjCUnitTestSuite, testsCase, id<JavaUtilSet>)

J2OBJC_INITIALIZED_DEFN(J2ObjCUnitTestSuite)

JavaUtilLoggingLogger *J2ObjCUnitTestSuite_logger;

@implementation J2ObjCUnitTestSuite

+ (JavaUtilLoggingLogger *)logger {
  return J2ObjCUnitTestSuite_logger;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  J2ObjCUnitTestSuite_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)addTestCase:(IOSClass *)cls {
  J2ObjCUnitTestSuite_addTestCase_(cls);
}

+ (NSString *)printTestsResultsWithOutputDir:(id<J2ObjCUnitOutputDir>)outArg {
  return J2ObjCUnitTestSuite_printTestsResultsWithOutputDir_(outArg);
}

+ (void)runTestSuiteWithId:(id)context {
  J2ObjCUnitTestSuite_runTestSuiteWithId_(context);
}

+ (void)runTestSuite {
  J2ObjCUnitTestSuite_runTestSuite();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 1, -1, 2, -1, -1 },
    { NULL, "LNSString;", 0x9, 3, 4, 5, -1, -1, -1 },
    { NULL, "V", 0x9, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x9, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addTestCase:);
  methods[2].selector = @selector(printTestsResultsWithOutputDir:);
  methods[3].selector = @selector(runTestSuiteWithId:);
  methods[4].selector = @selector(runTestSuite);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "logger", "LJavaUtilLoggingLogger;", .constantValue.asLong = 0, 0x1c, -1, 8, -1, -1 },
    { "testsCase", "LJavaUtilSet;", .constantValue.asLong = 0, 0xa, -1, 9, 10, -1 },
  };
  static const void *ptrTable[] = { "addTestCase", "LIOSClass;", "(Ljava/lang/Class<+Lbr/com/mobilemind/j2objc/unit/TestBehavior;>;)V", "printTestsResults", "LJ2ObjCUnitOutputDir;", "LJavaLangException;", "runTestSuite", "LNSObject;", &J2ObjCUnitTestSuite_logger, &J2ObjCUnitTestSuite_testsCase, "Ljava/util/Set<Ljava/lang/Class<+Lbr/com/mobilemind/j2objc/unit/TestBehavior;>;>;" };
  static const J2ObjcClassInfo _J2ObjCUnitTestSuite = { "TestSuite", "br.com.mobilemind.j2objc.unit", ptrTable, methods, fields, 7, 0x1, 5, 2, -1, -1, -1, -1, -1 };
  return &_J2ObjCUnitTestSuite;
}

+ (void)initialize {
  if (self == [J2ObjCUnitTestSuite class]) {
    J2ObjCUnitTestSuite_logger = JavaUtilLoggingLogger_getLoggerWithNSString_([J2ObjCUnitTestSuite_class_() getName]);
    J2ObjCUnitTestSuite_testsCase = new_JavaUtilHashSet_init();
    J2OBJC_SET_INITIALIZED(J2ObjCUnitTestSuite)
  }
}

@end

void J2ObjCUnitTestSuite_init(J2ObjCUnitTestSuite *self) {
  NSObject_init(self);
}

J2ObjCUnitTestSuite *new_J2ObjCUnitTestSuite_init() {
  J2OBJC_NEW_IMPL(J2ObjCUnitTestSuite, init)
}

J2ObjCUnitTestSuite *create_J2ObjCUnitTestSuite_init() {
  J2OBJC_CREATE_IMPL(J2ObjCUnitTestSuite, init)
}

void J2ObjCUnitTestSuite_addTestCase_(IOSClass *cls) {
  J2ObjCUnitTestSuite_initialize();
  if (![((id<JavaUtilSet>) nil_chk(J2ObjCUnitTestSuite_testsCase)) containsWithId:cls]) {
    [((id<JavaUtilSet>) nil_chk(J2ObjCUnitTestSuite_testsCase)) addWithId:cls];
  }
}

NSString *J2ObjCUnitTestSuite_printTestsResultsWithOutputDir_(id<J2ObjCUnitOutputDir> outArg) {
  J2ObjCUnitTestSuite_initialize();
  NSString *testsResult = J2ObjCUnitTestRunner_printTestsResultWithJ2ObjCUnitOutputDir_(outArg);
  J2ObjCUnitTestRunner_cleanResults();
  return testsResult;
}

void J2ObjCUnitTestSuite_runTestSuiteWithId_(id context) {
  J2ObjCUnitTestSuite_initialize();
  for (IOSClass * __strong clazz in nil_chk(J2ObjCUnitTestSuite_testsCase)) {
    @try {
      J2ObjCUnitTestRunner_runWithIOSClass_withId_(clazz, context);
    }
    @catch (JavaLangException *e) {
      [((JavaUtilLoggingLogger *) nil_chk(J2ObjCUnitTestSuite_logger)) logWithJavaUtilLoggingLevel:JreLoadStatic(JavaUtilLoggingLevel, SEVERE) withNSString:[e getMessage] == nil ? @"" : [e getMessage] withJavaLangThrowable:e];
    }
  }
}

void J2ObjCUnitTestSuite_runTestSuite() {
  J2ObjCUnitTestSuite_initialize();
  for (IOSClass * __strong clazz in nil_chk(J2ObjCUnitTestSuite_testsCase)) {
    @try {
      J2ObjCUnitTestRunner_runWithIOSClass_withId_(clazz, nil);
    }
    @catch (JavaLangException *e) {
      [((JavaUtilLoggingLogger *) nil_chk(J2ObjCUnitTestSuite_logger)) logWithJavaUtilLoggingLevel:JreLoadStatic(JavaUtilLoggingLevel, SEVERE) withNSString:[e getMessage] == nil ? @"" : [e getMessage] withJavaLangThrowable:e];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(J2ObjCUnitTestSuite)

J2OBJC_NAME_MAPPING(J2ObjCUnitTestSuite, "br.com.mobilemind.j2objc.unit", "J2ObjCUnit")
