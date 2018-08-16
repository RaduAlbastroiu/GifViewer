//
//  Giphy.h
//  GifViewer
//
//  Created by Radu Albastroiu on 16/08/2018.
//  Copyright © 2018 Radu Albastroiu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Giphy : NSObject

@property (strong, nonatomic) NSURL* stillImageUrl;
@property (strong, nonatomic) NSURL* animatedGifUrl;

+(instancetype) giphyWithDictionary: (NSDictionary*) dictionary;

@end
