//
//  ViewController.m
//  pptask
//
//  Created by Radoslaw Szeja on 01/09/15.
//  Copyright (c) 2015 Radosław Szeja. All rights reserved.
//

#import "ViewController.h"
#import "ImageStorage.h"

@interface ViewController () <UIImagePickerControllerDelegate>

@property (strong, nonatomic, nonnull) ImageStorage *imageStorage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadAvatarImage];
}

- (void)loadAvatarImage {
    UIImage *avatarImage = [self.imageStorage loadImageNamed:@"Avatar"];
    
    if (avatarImage != nil) {
        self.imageView.image = avatarImage;
    }
}

#pragma mark - Target Actions

- (IBAction)didTapChooseImageFromLibraryButton:(UIButton *)sender {
    
    // TODO: Present UIImagePickerController to choose image from user's library
    
    UIViewController *imagePickerController = [[UIViewController alloc] init];

    // Remember to configure imagePickerController
    
    [self presentViewController:imagePickerController animated:YES completion:nil];
}

#pragma mark - UIImagePickerControllerDelegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *image = info[UIImagePickerControllerOriginalImage];
    NSString *path = [self.imageStorage storeImage:image withName:@"Avatar"];
    
    NSLog(@"path: %@", path);
    
    [picker dismissViewControllerAnimated:YES completion:^{
        self.imageView.image = image;
    }];
}

#pragma mark - Lazy loading

- (ImageStorage * __nonnull)imageStorage {
    if (_imageStorage == nil) {
        _imageStorage = [[ImageStorage alloc] init];
    }
    return _imageStorage;
}

@end
