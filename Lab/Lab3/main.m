//
//  main.m
//  Lab3
//
//  Created by 鈴木ちほり on 2021/02/24.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        
        while (YES) {
            AdditionQuestion *question = [[AdditionQuestion alloc] init];
            NSInteger answer = [[InputHandler getUserInput:question.question] intValue];
            
            if (answer == question.answer) {
                NSLog(@"Right!");
                score.rightCount++;
            } else {
                NSLog(@"Wrong!");
                score.wrongCount++;
            }
            NSLog(@"%@", score.description);
        }
    }
    return 0;
}
