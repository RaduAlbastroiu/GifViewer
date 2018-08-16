//
//  DetailViewController.m
//  GifViewer
//
//  Created by Radu Albastroiu on 16/08/2018.
//  Copyright © 2018 Radu Albastroiu. All rights reserved.
//

#import "DetailViewController.h"
#import "Giphy.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if(self.giphy) {
        NSURLRequest* request = [NSURLRequest requestWithURL:self.giphy.animatedGifUrl];
        [self.webView loadRequest:request];
    }
    
    [self setupGesture];
}

- (void)setupGesture {
    UITapGestureRecognizer* dismiss = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissView)];
    
    dismiss.numberOfTapsRequired = 2;
    [self.view addGestureRecognizer:dismiss];
    
    UISwipeGestureRecognizer* swipeDismiss = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(dismissSwipeView)];
    swipeDismiss.direction = UISwipeGestureRecognizerDirectionRight;
    
    [self.view addGestureRecognizer:swipeDismiss];
}

- (void)dismissView {
    
    [UIView animateWithDuration:0.5 animations:^{
        self.view.transform = CGAffineTransformMakeScale(0.01, 0.01);
        self.view.alpha = 0.0;
    } completion:^(BOOL finished) {
        [self dismissViewControllerAnimated:TRUE completion:nil];
    }];
}

- (void)dismissSwipeView {
    
    [UIView animateWithDuration:0.25 animations:^{
        self.view.transform = CGAffineTransformMakeTranslation(400, 0);
    } completion:^(BOOL finished) {
        [self dismissViewControllerAnimated:TRUE completion:nil];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
