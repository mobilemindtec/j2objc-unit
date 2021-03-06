//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/HtmlGenerator.java
//

#include "HtmlGenerator.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "TestResult.h"
#include "java/lang/StringBuilder.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

@interface J2ObjCUnitHtmlGenerator () {
 @public
  id<JavaUtilMap> testFails_;
  JavaLangStringBuilder *html_;
}

- (void)newLine OBJC_METHOD_FAMILY_NONE;

- (void)contentWithNSString:(NSString *)text;

- (void)startTagWithNSString:(NSString *)tagName;

- (void)startTagWithNSString:(NSString *)tagName
                withNSString:(NSString *)cssProperty;

- (void)endTagWithNSString:(NSString *)tagName;

@end

J2OBJC_FIELD_SETTER(J2ObjCUnitHtmlGenerator, testFails_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(J2ObjCUnitHtmlGenerator, html_, JavaLangStringBuilder *)

__attribute__((unused)) static void J2ObjCUnitHtmlGenerator_newLine(J2ObjCUnitHtmlGenerator *self);

__attribute__((unused)) static void J2ObjCUnitHtmlGenerator_contentWithNSString_(J2ObjCUnitHtmlGenerator *self, NSString *text);

__attribute__((unused)) static void J2ObjCUnitHtmlGenerator_startTagWithNSString_(J2ObjCUnitHtmlGenerator *self, NSString *tagName);

__attribute__((unused)) static void J2ObjCUnitHtmlGenerator_startTagWithNSString_withNSString_(J2ObjCUnitHtmlGenerator *self, NSString *tagName, NSString *cssProperty);

__attribute__((unused)) static void J2ObjCUnitHtmlGenerator_endTagWithNSString_(J2ObjCUnitHtmlGenerator *self, NSString *tagName);

@implementation J2ObjCUnitHtmlGenerator

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)testFails {
  J2ObjCUnitHtmlGenerator_initWithJavaUtilMap_(self, testFails);
  return self;
}

- (NSString *)build {
  J2ObjCUnitHtmlGenerator_startTagWithNSString_(self, @"html");
  J2ObjCUnitHtmlGenerator_startTagWithNSString_(self, @"head");
  J2ObjCUnitHtmlGenerator_startTagWithNSString_(self, @"title");
  J2ObjCUnitHtmlGenerator_contentWithNSString_(self, @"Test Results");
  J2ObjCUnitHtmlGenerator_endTagWithNSString_(self, @"title");
  J2ObjCUnitHtmlGenerator_endTagWithNSString_(self, @"head");
  J2ObjCUnitHtmlGenerator_startTagWithNSString_(self, @"body");
  J2ObjCUnitHtmlGenerator_startTagWithNSString_withNSString_(self, @"h1", @"color:#006400");
  J2ObjCUnitHtmlGenerator_contentWithNSString_(self, @"Test Result");
  J2ObjCUnitHtmlGenerator_endTagWithNSString_(self, @"h1");
  (void) [((JavaLangStringBuilder *) nil_chk(html_)) appendWithNSString:@"<HR color='#FF4500'/>"];
  id<JavaUtilSet> results = [((id<JavaUtilMap>) nil_chk(self->testFails_)) keySet];
  for (IOSClass * __strong c in nil_chk(results)) {
    J2ObjCUnitHtmlGenerator_startTagWithNSString_(self, @"center");
    J2ObjCUnitHtmlGenerator_startTagWithNSString_withNSString_(self, @"span", @"color:#0000CD; font-size:14px; font-weight:bold;");
    J2ObjCUnitHtmlGenerator_contentWithNSString_(self, [((IOSClass *) nil_chk(c)) getSimpleName]);
    J2ObjCUnitHtmlGenerator_endTagWithNSString_(self, @"span");
    J2ObjCUnitHtmlGenerator_endTagWithNSString_(self, @"center");
    for (J2ObjCUnitTestResult * __strong result in nil_chk([((id<JavaUtilMap>) nil_chk(self->testFails_)) getWithId:c])) {
      J2ObjCUnitHtmlGenerator_startTagWithNSString_withNSString_(self, @"span", JreStrcat("$$", @"font-size:15px; color:", ([((J2ObjCUnitTestResult *) nil_chk(result)) isFailed] ? @"#FF0000" : @"#228B22")));
      J2ObjCUnitHtmlGenerator_contentWithNSString_(self, [result getMethodName]);
      J2ObjCUnitHtmlGenerator_endTagWithNSString_(self, @"span");
      J2ObjCUnitHtmlGenerator_newLine(self);
      for (NSString * __strong msg in nil_chk([result getMessages])) {
        J2ObjCUnitHtmlGenerator_startTagWithNSString_withNSString_(self, @"span", @"font-size:12px");
        J2ObjCUnitHtmlGenerator_startTagWithNSString_(self, @"b");
        J2ObjCUnitHtmlGenerator_contentWithNSString_(self, @"Message: ");
        J2ObjCUnitHtmlGenerator_endTagWithNSString_(self, @"b");
        J2ObjCUnitHtmlGenerator_contentWithNSString_(self, msg);
        J2ObjCUnitHtmlGenerator_endTagWithNSString_(self, @"span");
        J2ObjCUnitHtmlGenerator_newLine(self);
      }
      J2ObjCUnitHtmlGenerator_startTagWithNSString_withNSString_(self, @"span", @"font-size:12px; margin-top:5px");
      J2ObjCUnitHtmlGenerator_startTagWithNSString_(self, @"b");
      J2ObjCUnitHtmlGenerator_contentWithNSString_(self, @"Status: ");
      J2ObjCUnitHtmlGenerator_endTagWithNSString_(self, @"b");
      J2ObjCUnitHtmlGenerator_contentWithNSString_(self, JreStrcat("$$", [result getTestMessage], @" ms"));
      J2ObjCUnitHtmlGenerator_endTagWithNSString_(self, @"span");
      J2ObjCUnitHtmlGenerator_newLine(self);
      J2ObjCUnitHtmlGenerator_startTagWithNSString_withNSString_(self, @"span", @"font-size:12px; margin-top:5px");
      J2ObjCUnitHtmlGenerator_startTagWithNSString_(self, @"b");
      J2ObjCUnitHtmlGenerator_contentWithNSString_(self, @"Time: ");
      J2ObjCUnitHtmlGenerator_endTagWithNSString_(self, @"b");
      J2ObjCUnitHtmlGenerator_contentWithNSString_(self, JreStrcat("J$", [result getExecutionTime], @" ms"));
      J2ObjCUnitHtmlGenerator_endTagWithNSString_(self, @"span");
      J2ObjCUnitHtmlGenerator_newLine(self);
      J2ObjCUnitHtmlGenerator_startTagWithNSString_(self, @"center");
      (void) [((JavaLangStringBuilder *) nil_chk(html_)) appendWithNSString:@"<HR color='#FFD700' style='width:150px'/>"];
      J2ObjCUnitHtmlGenerator_endTagWithNSString_(self, @"center");
    }
    (void) [((JavaLangStringBuilder *) nil_chk(html_)) appendWithNSString:@"<HR color='#FF4500'/>"];
  }
  J2ObjCUnitHtmlGenerator_endTagWithNSString_(self, @"body");
  J2ObjCUnitHtmlGenerator_endTagWithNSString_(self, @"html");
  return [((JavaLangStringBuilder *) nil_chk(self->html_)) description];
}

- (void)newLine {
  J2ObjCUnitHtmlGenerator_newLine(self);
}

- (void)contentWithNSString:(NSString *)text {
  J2ObjCUnitHtmlGenerator_contentWithNSString_(self, text);
}

- (void)startTagWithNSString:(NSString *)tagName {
  J2ObjCUnitHtmlGenerator_startTagWithNSString_(self, tagName);
}

- (void)startTagWithNSString:(NSString *)tagName
                withNSString:(NSString *)cssProperty {
  J2ObjCUnitHtmlGenerator_startTagWithNSString_withNSString_(self, tagName, cssProperty);
}

- (void)endTagWithNSString:(NSString *)tagName {
  J2ObjCUnitHtmlGenerator_endTagWithNSString_(self, tagName);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 4, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 6, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilMap:);
  methods[1].selector = @selector(build);
  methods[2].selector = @selector(newLine);
  methods[3].selector = @selector(contentWithNSString:);
  methods[4].selector = @selector(startTagWithNSString:);
  methods[5].selector = @selector(startTagWithNSString:withNSString:);
  methods[6].selector = @selector(endTagWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "testFails_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x2, -1, -1, 7, -1 },
    { "html_", "LJavaLangStringBuilder;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/List<Lbr/com/mobilemind/j2objc/unit/TestResult;>;>;)V", "content", "LNSString;", "startTag", "LNSString;LNSString;", "endTag", "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/List<Lbr/com/mobilemind/j2objc/unit/TestResult;>;>;" };
  static const J2ObjcClassInfo _J2ObjCUnitHtmlGenerator = { "HtmlGenerator", "br.com.mobilemind.j2objc.unit", ptrTable, methods, fields, 7, 0x1, 7, 2, -1, -1, -1, -1, -1 };
  return &_J2ObjCUnitHtmlGenerator;
}

@end

void J2ObjCUnitHtmlGenerator_initWithJavaUtilMap_(J2ObjCUnitHtmlGenerator *self, id<JavaUtilMap> testFails) {
  NSObject_init(self);
  self->html_ = new_JavaLangStringBuilder_init();
  self->testFails_ = testFails;
}

J2ObjCUnitHtmlGenerator *new_J2ObjCUnitHtmlGenerator_initWithJavaUtilMap_(id<JavaUtilMap> testFails) {
  J2OBJC_NEW_IMPL(J2ObjCUnitHtmlGenerator, initWithJavaUtilMap_, testFails)
}

J2ObjCUnitHtmlGenerator *create_J2ObjCUnitHtmlGenerator_initWithJavaUtilMap_(id<JavaUtilMap> testFails) {
  J2OBJC_CREATE_IMPL(J2ObjCUnitHtmlGenerator, initWithJavaUtilMap_, testFails)
}

void J2ObjCUnitHtmlGenerator_newLine(J2ObjCUnitHtmlGenerator *self) {
  (void) [((JavaLangStringBuilder *) nil_chk(self->html_)) appendWithNSString:@"<br/>"];
}

void J2ObjCUnitHtmlGenerator_contentWithNSString_(J2ObjCUnitHtmlGenerator *self, NSString *text) {
  (void) [((JavaLangStringBuilder *) nil_chk(self->html_)) appendWithNSString:text];
}

void J2ObjCUnitHtmlGenerator_startTagWithNSString_(J2ObjCUnitHtmlGenerator *self, NSString *tagName) {
  J2ObjCUnitHtmlGenerator_startTagWithNSString_withNSString_(self, tagName, nil);
}

void J2ObjCUnitHtmlGenerator_startTagWithNSString_withNSString_(J2ObjCUnitHtmlGenerator *self, NSString *tagName, NSString *cssProperty) {
  (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(self->html_)) appendWithNSString:@"<"])) appendWithNSString:tagName];
  if (cssProperty != nil) {
    (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(self->html_)) appendWithNSString:@" style='"])) appendWithNSString:cssProperty])) appendWithNSString:@"'"];
  }
  (void) [((JavaLangStringBuilder *) nil_chk(self->html_)) appendWithNSString:@">"];
}

void J2ObjCUnitHtmlGenerator_endTagWithNSString_(J2ObjCUnitHtmlGenerator *self, NSString *tagName) {
  (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(self->html_)) appendWithNSString:@"</"])) appendWithNSString:tagName])) appendWithNSString:@">"];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(J2ObjCUnitHtmlGenerator)

J2OBJC_NAME_MAPPING(J2ObjCUnitHtmlGenerator, "br.com.mobilemind.j2objc.unit", "J2ObjCUnit")
