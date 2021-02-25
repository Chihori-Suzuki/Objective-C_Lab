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
        NSInteger rndFirstVal = 10 + arc4random() % (100 - 10);
        NSInteger rndSecondVal = 10 + arc4random() % (100 - 10);
        
        _question = [NSString stringWithFormat:@"%i + %i ?", rndFirstVal, rndSecondVal];
        _answer = rndFirstVal + rndSecondVal;
        
    }
    return self;
}

- (void)generateRandomQuestion{
    
}


@end
