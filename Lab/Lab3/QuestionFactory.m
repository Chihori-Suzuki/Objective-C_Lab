//
//  QuestionFactory.m
//  Lab3
//
//  Created by 鈴木ちほり on 2021/03/03.
//

#import "QuestionFactory.h"

@implementation QuestionFactory
    
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubstractionQuestion"];
    }
    return self;
}

-(Question *) generateRandomQuestion{
    NSString *questionType = [_questionSubclassNames objectAtIndex: arc4random_uniform(2)];
    return [[NSClassFromString(questionType) alloc] init];
}

@end
