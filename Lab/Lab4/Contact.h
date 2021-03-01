//
//  Contact.h
//  Lab4
//
//  Created by 鈴木ちほり on 2021/02/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property (assign) NSString *name;
@property (assign) NSString *email;
- (instancetype)initWithName:(NSString *) name initWithEmail:(NSString *) email;

@end

NS_ASSUME_NONNULL_END
