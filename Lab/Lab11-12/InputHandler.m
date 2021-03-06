//
//  InputHandler.m
//  Lab3
//
//  Created by 鈴木ちほり on 2021/02/25.
//

#import "InputHandler.h"

@implementation InputHandler

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}
// prompts the message and takes user input from the command line (C) and returns as NSString
+ (NSString *)getUserInput: (NSString *) prompt {
    NSLog(@"%@ ", prompt);
    char inputChars[255]; // create a char array of size maxLength
    char *result = fgets(inputChars, 255, stdin);
    if (result != NULL) {
      // 1. initialize NSString from c-string (char array)
      NSString *objCString = [NSString stringWithUTF8String:inputChars]; // NSString.stringWithUTF8String(inputChars);
      // 2. trim the input (remove all whitespaces)
      NSCharacterSet *whitespaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
      NSString *trimmedInput = [objCString stringByTrimmingCharactersInSet: whitespaces];
      return trimmedInput;
    }
    return NULL;
  }
@end
