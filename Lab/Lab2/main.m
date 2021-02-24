//
//  main.m
//  Lab2
//
//  Created by 鈴木ちほり on 2021/02/23.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Box *box = [[Box alloc] initHeight:3 initWidth:4 initLenght:5];
        Box *box2 = [[Box alloc] initHeight:30 initWidth:40 initLenght:50];
        
        NSLog(@"%f", [box calculateVolume]);
        NSLog(@"%f", [box2 calculateScale]);
        
    }
    return 0;
}
