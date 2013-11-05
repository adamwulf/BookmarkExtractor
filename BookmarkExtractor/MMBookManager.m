//
//  MMBookManager.m
//  BookmarkExtractor
//
//  Created by Adam Wulf on 11/5/13.
//  Copyright (c) 2013 Waterbolt. All rights reserved.
//

#import "MMBookManager.h"
#import "MMBook.h"

@implementation MMBookManager{
    NSMutableArray* books;
}

-(void) process{
    NSMutableDictionary* booksPlist = [NSMutableDictionary dictionaryWithContentsOfFile:@"/Users/adam/Library/Containers/com.apple.BKAgentService/Data/Documents/iBooks/Books/Books.plist"];
    NSLog(@"count: %lu", (unsigned long)[booksPlist count]);

    for(NSDictionary* bookProps in [booksPlist objectForKey:@"Books"]){
        MMBook* book = [[MMBook alloc] initWithDictionary:bookProps];
        [books addObject:book];
        NSLog(@"book: %@", book);
    }
}

@end
