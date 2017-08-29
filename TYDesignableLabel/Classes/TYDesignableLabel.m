//
// Created by Kwee Tek Yin on 8/24/17.
// Copyright (c) 2017 Tek Yin. All rights reserved.
//

#import "TYDesignableLabel.h"


@implementation TYDesignableLabel {

}

- (void)setExtraLineSpacing:(CGFloat)lineSpacing {
    _extraLineSpacing = lineSpacing;

    NSMutableAttributedString* attrString = [[NSMutableAttributedString  alloc] initWithString:self.text];
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    [style setLineSpacing:_extraLineSpacing];
    style.alignment = self.textAlignment;
    [attrString addAttribute:NSParagraphStyleAttributeName
                       value:style
                       range:NSMakeRange(0, self.text.length)];
    self.attributedText = attrString;
}

@end