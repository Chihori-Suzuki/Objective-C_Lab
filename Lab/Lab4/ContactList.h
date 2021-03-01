//
//  ContactList.h
//  Lab4
//
//  Created by 鈴木ちほり on 2021/02/27.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject

@property (nonatomic) NSMutableArray<Contact *> *contacts;

- (instancetype)init;
-(void)addContact:(Contact *)newContact;
-(void)displayName;

@end

NS_ASSUME_NONNULL_END
