//
//  Greeter.m
//  Lab9
//
//  Created by 鈴木ちほり on 2021/03/04.
//

#import "Greeter.h"

@implementation Greeter

- (BOOL)shouldSayHello {
    [self.delegate shouldSayHello];
}

@end
