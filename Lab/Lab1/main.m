//
//  main.m
//  Lab1
//
//  Created by 鈴木ちほり on 2021/02/22.
//

#import <Foundation/Foundation.h>

// prompts the message and takes user input from the command line (C) and returns as NSString
NSString *
getUserInput(int maxLength, NSString *prompt) {
  if (maxLength < 1) {
    maxLength = 255;
  }
  NSLog(@"%@ ", prompt);
  char inputChars[maxLength]; // create a char array of size maxLength
  char *result = fgets(inputChars, maxLength, stdin);
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

// main is the starting point of the program
// C, Objective-C
// C String vs NSString
int main(int argc, const char * argv[]) {
  @autoreleasepool {
      
    while (YES) {
      NSString *strInput = getUserInput(255, @"\nEnter your String ('q' to quit): ");
      if ([strInput isEqualToString:@"q"]) { break; }
      while (YES) {
        NSString *option = getUserInput(10, @"\nChoose one of the following options:\n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Space-It\n7. Word Count\n8. Remove Punctuations\n9. Done\n");
        if ([option isEqualToString:@"1"]) {
            
          NSLog(@"%@", [strInput uppercaseString]);
        } else if ([option isEqualToString:@"2"]) {
            NSLog(@"%@", [strInput lowercaseString]);
        } else if ([option isEqualToString:@"3"]) {
            long changeNum = (long)[strInput integerValue];
            
            if ([strInput isEqualToString:@"0"]) {
                NSLog(@"%ld", changeNum);
            }else {
                if(changeNum == 0){
                    NSLog(@"It is inpossible to Numberize");
                } else {
                    NSLog(@"%ld", changeNum);
                }
            }
            
        } else if ([option isEqualToString:@"4"]) {
            NSLog(@"%@" ,[strInput stringByAppendingString: @" eh?"]);
            
        } else if ([option isEqualToString:@"5"]) {
            NSString *endInput = [strInput substringFromIndex: [strInput length] -1];
            if ([endInput isEqualToString:@"?"]){
                NSLog(@"I don't know");
            }else if ([endInput isEqualToString:@"!"]){
                NSLog(@"Whoa, calm down!");
            } else {
                NSLog(@"That's great!!");
            }
            
        } else if ([option isEqualToString:@"6"]) {
            NSLog(@"%@" ,[strInput stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
            
        } else if ([option isEqualToString:@"7"]) {
            NSLog(@"%lu" ,(unsigned long)[strInput length]);
            
        } else if ([option isEqualToString:@"8"]) {
            NSString* finish = [[strInput componentsSeparatedByCharactersInSet:[[NSCharacterSet alphanumericCharacterSet] invertedSet]] componentsJoinedByString:@""];
            NSLog(@"%@", finish);
        } else if (option == nil || [option isEqualToString:@"9"]) {
          NSLog(@"Next String!");
          break;
        } else {
          NSLog(@"Not available.");
        }
      }
    }
// This is how string is defined under the hood
// - "a sequence of characters that ends with the null character '\0'
//    char *str = "Hello";
//    char str1[6]; // str1 stores the memory address of 'H'
//    str1[0] = 'H';
//    str1[1] = 'e';
//    str1[2] = 'l';
//    str1[3] = 'l';
//    str1[4] = 'o';
//    str1[5] = '\0';
  }
  return 0;
}
