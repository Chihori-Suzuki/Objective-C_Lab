//
//  ScoreKeeper.m
//  Lab3
//
//  Created by 鈴木ちほり on 2021/02/25.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

int rightCount = 0;
int wrongCount = 0;

- (instancetype)init {
    self = [super init];
    if (self) {
//        _rightCount = *rightCount;
//        _wrongCount = *wrongCount;
    }
    return self;
}

- (NSString *)description{
    return [NSString stringWithFormat:@"right: %ld, wrong: %ld", (long)_rightCount, (long)_wrongCount];
}

@end
