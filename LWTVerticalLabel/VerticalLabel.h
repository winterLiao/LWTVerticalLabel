//
//  VerticalLabel.h
//  LWTVerticalLabel
//
//  Created by liaowentao on 17/9/25.
//  Copyright © 2017年 LWT. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,VeriticalTextAlignment){
    VeriticalTextAlignmentTop = 0,
    VeriticalTextAlignmentMiddle,
    VeriticalTextAlignmentBottom,
};

@interface VerticalLabel : UILabel
@property (nonatomic) VeriticalTextAlignment verticalAlignment;
@end
