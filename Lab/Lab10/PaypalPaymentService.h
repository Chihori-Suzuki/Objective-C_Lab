//
//  PaypalPaymentService.h
//  Lab10
//
//  Created by 鈴木ちほり on 2021/03/03.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface PaypalPaymentService : NSObject <PaymentDelegate>

@end

NS_ASSUME_NONNULL_END
