//
//  TestResultWebView.h
//  PAY4GYM
//
//  Created by Ricardo Bocchi on 05/02/18.
//  Copyright © 2018 Ricardo Bocchi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestSuite.h"
#import "OutputDirImpl.h"
#import <WebKit/WebKit.h>

@interface TestResultWebView : UIViewController<UINavigationControllerDelegate, WKUIDelegate>{

    WKWebView  *webView;
    UIView *activityIndicatorContainer;
    UIActivityIndicatorView *activityIndicator;
}

-(void) runTests;
-(void) runTestsAgain: (id) sender;
-(UIColor*) fromHex: (UInt32) rgbValue alpha: (double) alpha;

@end
