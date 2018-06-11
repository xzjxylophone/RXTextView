//
//  RXTextView.h
//  RXExample
//
//  Created by Rush.D.Xzj on 15/10/26.
//  Copyright © 2015年 Rush.D.Xzj. All rights reserved.
//

#import <UIKit/UIKit.h>




// 带有默认文案的TextView
@interface RXTextView : UITextView
@property (nonatomic, readonly) UILabel *placeholderLabel;
@property (nonatomic, copy) NSString *placeholder;
// 刷新默认文案
- (void)refreshPlaceholder;
@end
