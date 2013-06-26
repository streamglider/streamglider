//
//  MagPage.h
//  StreamGlider
//
//  Created by Dmitry Shingarev on 31/10/2011.
//  Copyright 2011 StreamGlider, Inc. All rights reserved.
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

@class MagPageLayout;
@class Stream;
@class FrameIterator;

@interface MagPage : NSObject 

@property (nonatomic, retain) NSArray *articles;
@property (nonatomic, retain) MagPageLayout *layout;
@property (nonatomic, assign) Stream *stream;

@property (nonatomic, assign) FrameIterator *iterator;

@property (nonatomic, assign) BOOL emptyPage;

- (void)prepareArticlesForOrientation:(UIInterfaceOrientation)orientation;
- (void)layoutArticlesForOrientation:(UIInterfaceOrientation)orientation;

@end
