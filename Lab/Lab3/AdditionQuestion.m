//
//  AdditionQuestion.m
//  Lab3
//
//  Created by 鈴木ちほり on 2021/02/25.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init{
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    super.question = [NSString stringWithFormat:@"%li + %li = ?", (long) super.leftValue, (long) super.rightValue];
    super.answer = super.leftValue + super.rightValue;
}

@end
