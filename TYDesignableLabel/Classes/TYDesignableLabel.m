//
// Created by Kwee Tek Yin on 8/24/17.
// Copyright (c) 2017 Tek Yin. All rights reserved.
//

#import "TYDesignableLabel.h"


@implementation TYDesignableLabel {

}

- (void)setExtraLineSpacing:(CGFloat)lineSpacing {
    _extraLineSpacing = lineSpacing;
    [self renderText];
}

- (void)setExtraFirstLineHeadIndent:(CGFloat)extraFirstLineHeadIndent {
    _extraFirstLineHeadIndent = extraFirstLineHeadIndent;
    [self renderText];
}

- (void)setExtraHeadIndent:(CGFloat)extraHeadIndent {
    _extraHeadIndent = extraHeadIndent;
    [self renderText];
}

- (void)setText:(NSString *)text { // update styling when text change
    super.text = text;
    [self renderText];
}

- (void)renderText {
    if(self.text != nil){
        NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:self.text];
        NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
        [style setLineSpacing:_extraLineSpacing];
        [style setFirstLineHeadIndent:_extraFirstLineHeadIndent];
        [style setHeadIndent:_extraHeadIndent];
        style.alignment = self.textAlignment;
        [attrString addAttribute:NSParagraphStyleAttributeName
                           value:style
                           range:NSMakeRange(0, self.text.length)];
        self.attributedText = attrString;
    }
}

- (void)setExtraPadding:(NSString *)extraPadding {
    self.padding = UIEdgeInsetsFromString(extraPadding);
    [self renderText];
    [self invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize {
    CGSize intrinsicSuperViewContentSize = [super intrinsicContentSize];
    intrinsicSuperViewContentSize.height += self.padding.top + self.padding.bottom;
    intrinsicSuperViewContentSize.width += self.padding.left + self.padding.right;
    return intrinsicSuperViewContentSize;
}

@end