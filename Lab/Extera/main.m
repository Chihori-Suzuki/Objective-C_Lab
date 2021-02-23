//
//  main.m
//  Extera
//
//  Created by 鈴木ちほり on 2021/02/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *strInput = @"ff1234ff,ff.ff?ff!j";
        
        NSString* finish = [strInput componentsSeparatedByCharactersInSet:[[NSCharacterSet letterCharacterSet] invertedSet]];
        NSLog(@"%@", finish);
        NSLog(@"%@", finish);
        // strInput.componentsSeparatedByCharactersInSet(
//        [NSCharacterSet letterCharacterSet].invertedSet]).componentsJoinedByString:@""
    }
    return 0;
}
