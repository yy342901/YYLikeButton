//
//  ViewController.m
//  YYLikeButton
//
//  Created by sky　 on 17/2/4.
//  Copyright © 2017年 yy. All rights reserved.
//

#import "ViewController.h"
#import "LikeButton.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet LikeButton *likeButton;

@end

@implementation ViewController
- (IBAction)clikckLikeButton:(id)sender {
    [self.likeButton likeButtonAnimationCompletion:^(BOOL isSelectd) {
        
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
