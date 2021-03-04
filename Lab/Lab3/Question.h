//
//  Question.h
//  Lab3
//
//  Created by 鈴木ちほり on 2021/03/03.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic, strong) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property NSInteger rightValue;
@property NSInteger leftValue;

- (NSTimeInterval)answerTime;

@end

NS_ASSUME_NONNULL_END
