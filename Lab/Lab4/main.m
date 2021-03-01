//
//  main.m
//  Lab4
//
//  Created by 鈴木ちほり on 2021/02/25.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ContactList *contactList = [[ContactList alloc] init];
        
        while (YES) {
            NSLog(@"What would you like to do next?");
            NSLog(@"\n new - Create a new contact \n list - List all contacts \n quit - Exit Application");
            NSLog(@"\n list - List all contacts");
            NSLog(@"\n quit - Exit Application");
            
            InputCollector *input = [[InputCollector alloc] init];
            NSString *userInputValue = [input inputForPrompt:@"Input your answer: "];
            NSLog(@"%@", userInputValue);
            
            if ([userInputValue isEqualTo: @"quit"]) {
                break;
            } else if([userInputValue isEqualTo:@"new"]) {
                
                NSString *contactName = [input inputForPrompt:@"Input the new name of the list:"];
                NSString *contactEmail =[input inputForPrompt:@"And input the email of the list:"];
                Contact *newContact = [[Contact alloc] initWithName:contactName initWithEmail:contactEmail];
                [contactList addContact:newContact];
                [contactList displayName];
                
            } else if ([userInputValue isEqualTo:@"list"]) {
                [contactList displayName];
            }
            
        }
        
        
        
    }
    return 0;
    
    
}
