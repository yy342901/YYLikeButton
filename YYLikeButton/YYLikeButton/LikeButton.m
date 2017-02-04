
#import "LikeButton.h"

@implementation LikeButton

- (void)likeButtonAnimationCompletion:(likeActionBlock)completion {
    [UIView animateWithDuration:0.05f delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         self.imageView.transform = CGAffineTransformMakeScale(1.5f, 1.5f);
                     } completion:^(BOOL finished) {
                         [UIView animateWithDuration:0.05f delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveEaseInOut
                                          animations:^{
                                              self.imageView.transform = CGAffineTransformMakeScale(0.9, 0.9);
                                          } completion:^(BOOL finished) {
                                              [UIView animateWithDuration:0.05f delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveEaseInOut
                                                               animations:^{
                                                                   self.imageView.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
                                                               } completion:^(BOOL finished) {
                                                                   if (self.selected) {
                                                                       self.selected = NO;
                                                                   }else{
                                                                       self.selected = YES;
                                                                   }
                                                                   completion(self.isSelected);
                                                               }];
                                          }];
                     }];
}


@end
