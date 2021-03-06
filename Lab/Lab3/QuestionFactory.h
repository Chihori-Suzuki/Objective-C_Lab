//
//  QuestionFactory.h
//  Lab3
//
//  Created by 鈴木ちほり on 2021/03/03.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : Question

@property NSArray *questionSubclassNames;
-(Question *) generateRandomQuestion;

@end

NS_ASSUME_NONNULL_END
