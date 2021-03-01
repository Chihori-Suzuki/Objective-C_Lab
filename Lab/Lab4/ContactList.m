//
//  ContactList.m
//  Lab4
//
//  Created by 鈴木ちほり on 2021/02/27.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    [self.contacts addObject:newContact];
}

-(void)displayName{
    int j = 0;
    for (int i =0; i < [_contacts count]; i++) {
        NSLog(@"%@", [NSString stringWithFormat:@"%d: <%@>", j, [self.contacts[i] name]]);
        if(i % 2 != 1) j++;
    }
}

@end
