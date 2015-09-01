//
//  ImageStorage.h
//  pptask
//
//  Created by Radoslaw Szeja on 01/09/15.
//  Copyright (c) 2015 Radosław Szeja. All rights reserved.
//

@import UIKit;

@interface ImageStorage : NSObject

/**
 * Stores UIImage in Documents path with given name.
 * @param image UIImage instance to be stored
 * @param imageName NSString
 *
 * @return NSString path to file
 */
- (NSString *)storeImage:(UIImage *)image withName:(NSString *)imageName;

- (UIImage *)loadImageNamed:(NSString *)imageName;

@end
