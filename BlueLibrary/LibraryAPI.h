//
//  LibraryApi.h
//  BlueLibrary
//
//  Created by Alexey Chulochnikov on 19.09.14.
//  Copyright (c) 2014 Eli Ganem. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Album.h"

@interface LibraryAPI : NSObject

- (NSArray *)getAlbums;
- (void)addAlbum:(Album *)album atIndex:(int)index;
- (void)deleteAlbumAtIndex:(int)index;

+ (LibraryAPI *)sharedInstance;

@end
