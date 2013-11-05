//
//  MMBook.m
//  BookmarkExtractor
//
//  Created by Adam Wulf on 11/5/13.
//  Copyright (c) 2013 Waterbolt. All rights reserved.
//

#import "MMBook.h"

@implementation MMBook{
    NSDictionary* properties;
}

-(id) initWithDictionary:(NSDictionary*)_properties{
    if(self = [super init]){
        properties = _properties;
    }
    return self;
}

-(NSString*) bookTitle{
    return [properties objectForKey:@"itemName"];
}

-(NSString*) authorName{
    return [properties objectForKey:@"artistName"];
}

-(NSString*) description{
    if([self.bookTitle rangeOfString:@"1491"].location != NSNotFound){
        NSLog(@"gotcha");
    }
    return [NSString stringWithFormat:@"[Book: %@ by %@]", self.bookTitle, self.authorName];
}

@end
