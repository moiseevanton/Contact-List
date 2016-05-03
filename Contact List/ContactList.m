//
//  ContactList.m
//  Contact List
//
//  Created by Anton Moiseev on 2016-05-03.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

-(instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
    
}

-(void)addContact:(Contact *)newContact {
    
    [self.contacts addObject:newContact];
}

-(void) listContacts {
    
    int i = 0;
    
    for (Contact *eachContact in self.contacts) {
        
        NSLog(@"%d: %@", i, eachContact.fullName);
        i++;
    }
    
}

@end
