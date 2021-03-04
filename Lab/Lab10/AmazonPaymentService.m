//
//  AmazonPaymentService.m
//  Lab10
//
//  Created by 鈴木ちほり on 2021/03/03.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService
- (void)processPaymentAmount:(NSInteger) amount {
}


- (BOOL)canProcessPayment {
    NSInteger num = arc4random_uniform(1);
    if(num == 0) {
        return NO;
    } else {
        return YES;
    }
}
@end
