//
//  ApplePaymentService.h
//  Lab10
//
//  Created by 鈴木ちほり on 2021/03/04.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface ApplePaymentService : NSObject <PaymentDelegate>

@end

NS_ASSUME_NONNULL_END
