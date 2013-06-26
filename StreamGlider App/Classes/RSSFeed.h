//
//  RSSFeed.h
//  StreamCast
//
//  Created by Dmitry Shingarev on 12/08/2010.
//  Copyright 2010 StreamGlider, Inc. All rights reserved.
//
//  This program is free software if used non-commercially: you can redistribute it and/or modify
//  it under the terms of the BSD 4 Clause License as published by
//  the Free Software Foundation.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  BSD 4 Clause License for more details.
//
//  You should have received a copy of the BSD 4 Clause License
//  along with this program.  If not, see the README.md file with this program.

#import <Foundation/Foundation.h>
#import "Feed.h"

@interface RSSFeed : Feed <NSXMLParserDelegate> 

@property (nonatomic, copy) NSString *link;
@property (nonatomic, copy) NSString *feedDescription;
@property (nonatomic, copy) NSString *feedTitle;
@property (nonatomic, copy) NSDate *lastBuildDate;

@property (nonatomic, copy) NSString *imageURL;
@property (nonatomic, copy) NSData *imageData;

- (NSString *)flattenHTML:(NSString *)html;

@end
