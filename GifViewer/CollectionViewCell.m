//
//  CollectionViewCell.m
//  GifViewer
//
//  Created by Radu Albastroiu on 16/08/2018.
//  Copyright © 2018 Radu Albastroiu. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell

-(void)setUrlString:(NSString*)urlString {
    _urlString = urlString;
    
    [self downloadImageWithURL:urlString];
}

-(void)downloadImageWithURL:(NSString*)urlString {
    
    NSURLSession* session = [NSURLSession sharedSession];
    NSURL* url = [[NSURL alloc] initWithString:urlString];
    NSURLRequest* request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReturnCacheDataElseLoad timeoutInterval:10];
    
    NSURLSessionDownloadTask* task = [session downloadTaskWithRequest:request completionHandler: ^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSData* imageData = [[NSData alloc] initWithContentsOfURL:location];
        UIImage* image = [UIImage imageWithData:imageData];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            self.imageView.image = image;
        });
    }];
    
    [task resume];
    
}

@end
