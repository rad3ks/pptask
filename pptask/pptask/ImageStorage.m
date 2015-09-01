//
//  ImageStorage.m
//  pptask
//
//  Created by Radoslaw Szeja on 01/09/15.
//  Copyright (c) 2015 Radosław Szeja. All rights reserved.
//

#import "ImageStorage.h"

@implementation ImageStorage

- (NSString *)storeImage:(UIImage *)image withName:(NSString *)imageName {
    
    // TODO:
    // - Get documents path as a destination path
    // - Convert UIImage to NSData as PNG or JPEG
    // - Save image to destination path
    // - return destination path
    
    NSString *documentsPath = nil;
    NSString *writePath = nil;
    NSData *imageData = nil;
    
    [imageData writeToFile:writePath atomically:YES];
    
    return writePath;
}

- (UIImage *)loadImageNamed:(NSString *)imageName {
    // TODO: Implement this method
    return nil;
}

@end
