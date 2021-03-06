//
//  ScoreKeeper.h
//  Lab3
//
//  Created by 鈴木ちほり on 2021/02/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property (assign) NSInteger rightCount;
@property (assign) NSInteger wrongCount;

- (instancetype)init;

@end

NS_ASSUME_NONNULL_END
