//
//  RXTextView.m
//  RXExample
//
//  Created by Rush.D.Xzj on 15/10/26.
//  Copyright © 2015年 Rush.D.Xzj. All rights reserved.
//

#import "RXTextView.h"

@interface RXTextView ()
@property (nonatomic, readwrite, strong) UILabel *lblPlaceholder;

@end

@implementation RXTextView

#pragma mark - Proverty
- (UILabel *)lblPlaceholder
{
    if (_lblPlaceholder == nil) {
        _lblPlaceholder = [[UILabel alloc] init];
        _lblPlaceholder.numberOfLines = 0;
        _lblPlaceholder.font = self.font;
        _lblPlaceholder.backgroundColor = [UIColor clearColor];
        _lblPlaceholder.textColor = [UIColor blackColor];
        _lblPlaceholder.alpha = 0;
    }
    return _lblPlaceholder;
}
- (void)setPlaceholder:(NSString *)placeholder
{
    _placeholder = placeholder;
    self.lblPlaceholder.text = self.placeholder;
    [self refreshPlaceholder];
}

#pragma mark - Private
- (void)initialize
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(refreshPlaceholder) name:UITextViewTextDidChangeNotification object:self];
    
    
    
    [self addSubview:self.lblPlaceholder];
}

- (void)refreshPlaceholder
{
    CGFloat alpha = self.text.length > 0 ? 0 : 1;
    self.lblPlaceholder.alpha = alpha;
    
    [self.lblPlaceholder sizeToFit];
    self.lblPlaceholder.frame = CGRectMake(7, 6, CGRectGetWidth(self.frame) - 14, CGRectGetHeight(self.lblPlaceholder.frame));
    [self setNeedsLayout];
    [self layoutIfNeeded];
    
    
}


#pragma mark - Constructor And Destructor
- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initialize];
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
    }
    return self;
}

#pragma mark - Override
- (void)awakeFromNib
{
    [super awakeFromNib];
    [self initialize];
}


- (void)setText:(NSString *)text
{
    [super setText:text];
    [self refreshPlaceholder];
}


//When any text changes on textField, the delegate getter is called. At this time we refresh the textView's placeholder
- (id<UITextViewDelegate>)delegate
{
    [self refreshPlaceholder];
    return [super delegate];
}


@end
