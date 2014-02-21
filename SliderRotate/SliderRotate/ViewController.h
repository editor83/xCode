//
//  ViewController.h
//  SliderRotate
//
//  Created by UzakYakinMBPro on 21/02/14.
//  Copyright (c) 2014 UzakYakinMBPro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    int val;
    
    UIImageView *arrowImage;
    IBOutlet UISlider *changeSlider;
    IBOutlet UILabel *sliderLabel;
    
}

- (IBAction)changeSlider:(id)sender;

@end
