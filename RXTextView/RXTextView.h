//
//  RXTextView.h
//  RXExample
//
//  Created by Rush.D.Xzj on 15/10/26.
//  Copyright © 2015年 Rush.D.Xzj. All rights reserved.
//

#import <UIKit/UIKit.h>


// 类似于


/*
 
 当直接在vc中使用的时候,一定要在VC中有如下的代码
 因为UITextView本身就是一个UIScrollView
#pragma mark - Override
#ifdef __IPHONE_7_0
- (UIRectEdge)edgesForExtendedLayout {
    return UIRectEdgeNone;
}
#endif
 
 */


// 带有默认文案的TextView
@interface RXTextView : UITextView
@property (nonatomic, readonly, strong) UILabel *lblPlaceholder;
@property (nonatomic,copy) NSString *placeholder;
// 刷新默认文案
- (void)refreshPlaceholder;
@end
