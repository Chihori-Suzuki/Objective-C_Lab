//
//  InputHandler.h
//  Lab3
//
//  Created by 鈴木ちほり on 2021/02/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputHandler : NSObject

- (instancetype)init;
+ (NSString *)getUserInput:(NSString *) prompt;

@end

NS_ASSUME_NONNULL_END
