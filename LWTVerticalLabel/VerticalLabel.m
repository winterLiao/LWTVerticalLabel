//
//  VerticalLabel.m
//  LWTVerticalLabel
//
//  Created by liaowentao on 17/9/25.
//  Copyright © 2017年 LWT. All rights reserved.
//

#import "VerticalLabel.h"

@implementation VerticalLabel
- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.verticalAlignment = VeriticalTextAlignmentMiddle;
    }
    return self;
}

- (void)setVerticalAlignment:(VeriticalTextAlignment)verticalAlignment {
    _verticalAlignment = verticalAlignment;
    [self setNeedsDisplay];
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    CGRect textRect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    switch (self.verticalAlignment)
    {
        case VeriticalTextAlignmentTop:
            textRect.origin.y = bounds.origin.y;
            break;
        case VeriticalTextAlignmentBottom:
            textRect.origin.y = bounds.origin.y + bounds.size.height - textRect.size.height;
            break;
        case VeriticalTextAlignmentMiddle:
            // Fall through.
        default:
            textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) / 2.0;
    }
    return textRect;
}

-(void)drawTextInRect:(CGRect)requestedRect {
    CGRect actualRect = [self textRectForBounds:requestedRect limitedToNumberOfLines:self.numberOfLines];
    [super drawTextInRect:actualRect];
}

@end
