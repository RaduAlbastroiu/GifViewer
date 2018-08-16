//
//  Giphy.m
//  GifViewer
//
//  Created by Radu Albastroiu on 16/08/2018.
//  Copyright © 2018 Radu Albastroiu. All rights reserved.
//

#import "Giphy.h"

@implementation Giphy

+(instancetype) giphyWithDictionary: (NSDictionary*) dictionary {
    Giphy* giphy = [[Giphy alloc] init];
    
    if(giphy) {
        giphy.animatedGifUrl = [NSURL URLWithString:[dictionary valueForKeyPath:@"images.original.url"]];
        giphy.stillImageUrl = [NSURL URLWithString:[dictionary valueForKeyPath:@"images.downsized_still.url"]];
    }
    
    return giphy;
}

@end
