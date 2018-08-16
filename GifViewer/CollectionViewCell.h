//
//  CollectionViewCell.h
//  GifViewer
//
//  Created by Radu Albastroiu on 16/08/2018.
//  Copyright © 2018 Radu Albastroiu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) NSString* urlString;

@end
