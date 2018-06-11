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
@property (strong, nonatomic) IBOutlet RXTextView *textView;
//@property (weak, nonatomic) IBOutlet UIView *testView;
//@property (weak, nonatomic) IBOutlet RXTextView *testTextView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    self.edgesForExtendedLayout = UIRectEdgeAll;
    self.navigationController.navigationBar.translucent = NO;
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    self.textView = [[RXTextView alloc] initWithFrame:CGRectMake(0, 0, 100, 200)];
    
    self.textView.placeholder = @"textView默认文案";
    self.textView.backgroundColor = [UIColor redColor];
    
    
    
    
    UIView *tmpView = [[UIView alloc] initWithFrame:self.textView.frame];
    [tmpView addSubview:self.textView];
    
    [self.view addSubview:tmpView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSLog(@"%@", NSStringFromCGRect(self.view.frame));
    
//    2018-06-11 20:36:11.154649+0800 RXTextViewExample[484:185859] {{0, 0}, {375, 812}}

}







/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
