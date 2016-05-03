//
//  main.m
//  Contact List
//
//  Created by Anton Moiseev on 2016-05-03.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    
    ContactList *myListOfContacts = [[ContactList alloc] init];
    
    while (YES) {
        
        InputCollector *inputColl = [[InputCollector alloc] init];
        
        NSString *commandInput = [inputColl inputForPrompt:@"\nHey there! Here are the options available to you:\n1.Create a new contact (command input: new)\n2.Exit the application (command input: quit)\n3.List all contacts (command input: list)\nSo, what would you like to do next? Enter the command input: "];
        
        if ([commandInput isEqualToString:@"quit"]) {
            
            NSLog(@"Bye bye!");
            break;
            
        } else if ([commandInput isEqualToString:@"new"]) {
         
            NSString *nameInput = [inputColl inputForPrompt:@"Enter the full name of the contact: "];
            
            NSString *emailInput = [inputColl inputForPrompt:@"Enter the email of the contact"];
            
            Contact *inputContact = [[Contact alloc] init];
            inputContact.fullName = nameInput;
            inputContact.email = emailInput;
            [myListOfContacts addContact:inputContact];
            
        } else if ([commandInput isEqualToString:@"list"]) {
            
            [myListOfContacts listContacts];
            
        } else {
            
            NSLog(@"Wrong command! Enter one of the listed commands!");
            
        }
        
    }
    
    return 0;
}
