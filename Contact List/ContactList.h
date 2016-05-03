//
//  ContactList.h
//  Contact List
//
//  Created by Anton Moiseev on 2016-05-03.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (strong, nonatomic) NSMutableArray *contacts;

-(void)addContact:(Contact *)newContact;

-(void)listContacts;

@end
