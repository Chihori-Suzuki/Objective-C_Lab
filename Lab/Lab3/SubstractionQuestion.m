//
//  SubstractionQuestion.m
//  Lab3
//
//  Created by 鈴木ちほり on 2021/03/03.
//

#import "SubstractionQuestion.h"
@implementation SubstractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}
-(void)generateQuestion {
    
    self.question = [NSString stringWithFormat:@"%li - %li = ?", (long) self.leftValue, (long) self.rightValue];
    self.answer = self.leftValue - self.rightValue;
}


@end
