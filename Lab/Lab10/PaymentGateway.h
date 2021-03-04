//
//  PaymentGateway.h
//  Lab10
//
//  Created by 鈴木ちほり on 2021/03/03.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate

@required
- (void)processPaymentAmount:(NSInteger) amount;
@optional
- (BOOL) canProcessPayment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;


@end

NS_ASSUME_NONNULL_END
