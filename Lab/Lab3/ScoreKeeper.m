//
//  ScoreKeeper.m
//  Lab3
//
//  Created by 鈴木ちほり on 2021/02/25.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

//int rightCount = 0;
//int wrongCount = 0;

- (instancetype)init {
    self = [super init];
    if (self) {
        _rightCount = 0;
        _wrongCount = 0;
    }
    return self;
}

- (NSString *)description{
    NSInteger score = _rightCount + _wrongCount;
    NSInteger right = _rightCount;
    NSInteger wrongPer = (_wrongCount / (_rightCount + _wrongCount)) * 100;
    
    return [NSString stringWithFormat:@"score: %ld, right: %ld, wrong: %ld %", score, right, wrongPer];
}

@end
