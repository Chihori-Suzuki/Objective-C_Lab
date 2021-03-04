//
//  main.m
//  Lab10
//
//  Created by 鈴木ちほり on 2021/03/03.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSInteger dollar = arc4random_uniform(100);
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", (long)dollar);
        char inputChars[255]; // create a char array of size maxLength
        char *result = fgets(inputChars, 255, stdin);
        NSLog(@"%s", result);
        NSString *objCString = [NSString stringWithUTF8String:inputChars];
        NSCharacterSet *whitespaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        NSString *trimmedInput = [objCString stringByTrimmingCharactersInSet: whitespaces];
        NSInteger resultInt = [[NSString stringWithFormat:@"%@", trimmedInput] intValue];
        
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
//        [paymentGateway processPaymentAmount:resultInt];
        
        PaypalPaymentService *paypal = [[PaypalPaymentService alloc] init];
        StripePaymentService *stripe = [[StripePaymentService alloc] init];
        AmazonPaymentService *amazon = [[AmazonPaymentService alloc] init];
        
        switch (resultInt) {
            case 1:
                [paypal processPaymentAmount:resultInt];
                break;
            case 2:
                [stripe processPaymentAmount:resultInt];
                break;
            default:
                [amazon processPaymentAmount:resultInt];
                break;
        }
        
    }
    return 0;
}
