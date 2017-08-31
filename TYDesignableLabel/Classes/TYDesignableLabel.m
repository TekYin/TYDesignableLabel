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


- (void)renderText {
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

@end