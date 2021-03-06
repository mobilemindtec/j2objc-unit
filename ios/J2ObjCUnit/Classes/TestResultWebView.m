//
//  TestResultWebView.m
//  PAY4GYM
//
//  Created by Ricardo Bocchi on 05/02/18.
//  Copyright © 2018 Ricardo Bocchi. All rights reserved.
//

#import "TestResultWebView.h"

@interface TestResultWebView ()

@end

@implementation TestResultWebView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self.navigationController setNavigationBarHidden:false];
    self.navigationController.delegate = self;

    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"Run" style:UIBarButtonItemStylePlain target:self action:@selector(runTestsAgain:)];

    self.navigationItem.rightBarButtonItem = item;

    NSArray *ver = [[UIDevice currentDevice].systemVersion componentsSeparatedByString:@"."];
    if ([[ver objectAtIndex:0] intValue] >= 7) {
        // iOS 7.0 or later
        self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:65/255.0 green: 65/255.0 blue: 66/255.0 alpha: 100.0];
        self.navigationController.navigationBar.translucent = NO;
    }else {
        // iOS 6.1 or earlier
        self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:65/255.0 green: 65/255.0 blue: 66/255.0 alpha: 100.0];
    }

    [self.navigationItem setTitle:@"J2ObjC Unit"];
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:UITextAttributeTextColor]];
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];

    CGRect bounds = UIScreen.mainScreen.bounds;
    self.view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, bounds.size.width, bounds.size.height)];

    self.view.backgroundColor = UIColor.whiteColor;

    WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];    
    webView = [[WKWebView alloc] initWithFrame: self.view.frame configuration: configuration];
    [webView setUIDelegate:self];
    [self.view addSubview: webView];

    [self initActivityIndicator];
    [self runTests];
}

-(void) runTestsAgain: (id)sender{
    [self runTests];
}

-(void) runTests {

    [self.view addSubview: activityIndicatorContainer];
    [activityIndicatorContainer bringSubviewToFront: self.view];
    [activityIndicator startAnimating];
    __block NSString *contents = nil;
    __block NSURL *baseUrl = nil;


    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{

        [J2ObjCUnitTestSuite runTestSuite];

        @try{

            NSString *htmlFileLocation = [J2ObjCUnitTestSuite printTestsResultsWithOutputDir: [[J2ObjCUnitIOSOutputDirImpl alloc] init]];


            contents = [NSString stringWithContentsOfFile: htmlFileLocation encoding: NSUTF8StringEncoding error: nil];

            baseUrl = [NSURL URLWithString: [htmlFileLocation stringByDeletingLastPathComponent]];


        }@catch(NSException *e){

            UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"J2ObjC Unit Test" message:[NSString stringWithFormat:@"Error on process html file. %@", [e reason]] preferredStyle:UIAlertControllerStyleAlert];

            UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];

            [alert addAction:defaultAction];
            [self presentViewController:alert animated:YES completion:nil];

        }

        dispatch_async(dispatch_get_main_queue(), ^(void) {
            [webView loadHTMLString: contents baseURL: nil];
            [activityIndicatorContainer removeFromSuperview];
            [activityIndicator stopAnimating];
        });
    });
}



-(void) initActivityIndicator{

    activityIndicatorContainer  = [[UIView alloc] init];
    activityIndicatorContainer.frame = self.view.frame;
    activityIndicatorContainer.center = self.view.center;


    activityIndicatorContainer.backgroundColor = [self fromHex: 0xffffff alpha: 0.3];

    UIView *loadingView = [[UIView alloc] init];
    loadingView.frame = CGRectMake(0, 0, 80, 80);
    loadingView.center = self.view.center;
    loadingView.backgroundColor = [self fromHex: 0x444444  alpha: 0.7];
    loadingView.clipsToBounds = true;
    loadingView.layer.cornerRadius = 10;

    activityIndicator = [[UIActivityIndicatorView alloc] init];
    activityIndicator.frame = CGRectMake(0, 0, 40, 40);
    activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
    activityIndicator.center = CGPointMake(loadingView.frame.size.width / 2, loadingView.frame.size.height / 2);
    [loadingView addSubview: activityIndicator];
    [activityIndicatorContainer addSubview: loadingView ];


}


-(UIColor*) fromHex: (UInt32) rgbValue alpha: (double) alpha {
    CGFloat red = ((rgbValue & 0xFF0000) >> 16)/256.0;
    CGFloat green = ((rgbValue & 0xFF00) >> 8)/256.0;
    CGFloat blue = (rgbValue & 0xFF)/256.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}


@end
