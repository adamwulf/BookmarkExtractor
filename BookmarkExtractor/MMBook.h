//
//  MMBook.h
//  BookmarkExtractor
//
//  Created by Adam Wulf on 11/5/13.
//  Copyright (c) 2013 Waterbolt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MMBook : NSObject

@property (nonatomic, readonly) NSString* bookTitle;
@property (nonatomic, readonly) NSString* authorName;

-(id) initWithDictionary:(NSDictionary*)_properties;


@end
