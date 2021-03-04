//
//  QuestionManager.m
//  Lab3
//
//  Created by 鈴木ちほり on 2021/03/02.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray new];
    }
    return self;
}

- (NSString *)timeOutPut {
    Question *lastQuestion = [_questions objectAtIndex: [_questions count] - 1];
    Question *firstQuestion = [_questions objectAtIndex: 0];
    NSTimeInterval timeInterval = [[lastQuestion endTime] timeIntervalSinceDate:[firstQuestion startTime]];
    long sec = lroundf(timeInterval);
    int seconds = sec % 60;
    return [NSString stringWithFormat: @"total time: %ds, average time: %lus", seconds, seconds / [_questions count]];
}

@end
