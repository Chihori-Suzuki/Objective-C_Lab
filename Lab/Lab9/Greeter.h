//
//  Greeter.h
//  Lab9
//
//  Created by 鈴木ちほり on 2021/03/04.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol GreeterDelegate

@required
- (BOOL)shouldSayHello;
@end

@interface Greeter : NSObject

@property (nonatomic, weak) id<GreeterDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
