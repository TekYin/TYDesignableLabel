//
// Created by Kwee Tek Yin on 8/24/17.
// Copyright (c) 2017 Tek Yin. All rights reserved.
//

#import <Foundation/Foundation.h>

IB_DESIGNABLE
@interface TYDesignableLabel : UILabel

@property(nonatomic, assign) IBInspectable CGFloat extraLineSpacing;
@property(nonatomic, assign) IBInspectable CGFloat extraFirstLineHeadIndent;
@property(nonatomic, assign) IBInspectable CGFloat extraHeadIndent;
@property(nonatomic, assign) IBInspectable NSString *extraPadding;

@property(nonatomic) UIEdgeInsets padding;


@end