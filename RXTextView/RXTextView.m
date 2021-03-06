//
//  RXTextView.m
//  RXExample
//
//  Created by Rush.D.Xzj on 15/10/26.
//  Copyright © 2015年 Rush.D.Xzj. All rights reserved.
//

#import "RXTextView.h"

@interface RXTextView () <UITextViewDelegate>
@property (nonatomic, readwrite, strong) UILabel *placeholderLabel;

@end

@implementation RXTextView



#pragma mark - Constructor And Destructor

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}
- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}



#pragma mark - Override
- (void)awakeFromNib
{
    [super awakeFromNib];
    [self setup];
}

- (void)setText:(NSString *)text
{
    [super setText:text];
    [self refreshPlaceholder];
}


// When any text changes on textField, the delegate getter is called. At this time we refresh the textView's placeholder
- (id<UITextViewDelegate>)delegate
{
    [self refreshPlaceholder];
    return [super delegate];
}

#pragma mark - Private
- (void)setup
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(refreshPlaceholder) name:UITextViewTextDidChangeNotification object:self];
    [self addSubview:self.placeholderLabel];    
}

- (void)refreshPlaceholder
{
    CGFloat alpha = self.text.length > 0 ? 0 : 1;
    self.placeholderLabel.alpha = alpha;
    if (alpha > 0) {
        self.placeholderLabel.frame = CGRectMake(7, 6, self.frame.size.width - 14, self.frame.size.height - 12);
        [self.placeholderLabel sizeToFit];
        self.placeholderLabel.frame = CGRectMake(7, 6, CGRectGetWidth(self.frame) - 14, CGRectGetHeight(self.placeholderLabel.frame));
        [self setNeedsLayout];
        [self layoutIfNeeded];
    }
}


#pragma mark - Proverty
- (UILabel *)placeholderLabel
{
    if (_placeholderLabel == nil) {
        _placeholderLabel = [[UILabel alloc] init];
        _placeholderLabel.numberOfLines = 0;
        _placeholderLabel.font = self.font;
        _placeholderLabel.backgroundColor = [UIColor clearColor];
        _placeholderLabel.textColor = [UIColor blackColor];
        _placeholderLabel.alpha = 0;
    }
    return _placeholderLabel;
}
- (void)setPlaceholder:(NSString *)placeholder
{
    _placeholder = placeholder;
    self.placeholderLabel.text = self.placeholder;
    [self refreshPlaceholder];
}

@end
