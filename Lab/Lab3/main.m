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
#import "QuestionManager.h"
#import "Question.h"
#import "QuestionFactory.h"
#import "SubstractionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameon = YES;
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        QuestionManager *questionManeger = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        while (gameon) {
            Question *question1 = [questionFactory generateRandomQuestion];
            [[questionManeger questions] addObject: question1];
            NSLog(@"%@", [question1 question]);
            
            NSString *userInput = [InputHandler getUserInput];
            
            if ([userInput isEqualTo:@"quit"]) {
                gameon = NO;
            } else if ([userInput integerValue] == [question1 answer]) {
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
