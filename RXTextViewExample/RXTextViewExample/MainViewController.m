//
//  MainViewController.m
//  RXTextViewExample
//
//  Created by Rush.D.Xzj on 15/11/16.
//  Copyright © 2015年 Rush.D.Xzj. All rights reserved.
//

#import "MainViewController.h"
#import "RXTextView.h"
@interface MainViewController ()
@property (weak, nonatomic) IBOutlet RXTextView *rxTextView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    self.rxTextView.text = @"";
    self.rxTextView.placeholder = @"textview默认文案";
    
    
    NSLog(@"%@, %@", self.rxTextView, self.rxTextView.placeholderLabel);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// 一定要有此段代码
#pragma mark - Override
#ifdef __IPHONE_7_0
- (UIRectEdge)edgesForExtendedLayout {
    return UIRectEdgeNone;
}
#endif

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
