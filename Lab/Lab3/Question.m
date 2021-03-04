//
//  Question.m
//  Lab3
//
//  Created by 鈴木ちほり on 2021/03/03.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _leftValue = arc4random_uniform(100);
        _rightValue = arc4random_uniform(100);
        _startTime = [NSDate date];
    }
    return self;
}

- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime {
    return [_endTime timeIntervalSinceDate:_startTime];
}

- (void)generateQuestion {
}

@end
