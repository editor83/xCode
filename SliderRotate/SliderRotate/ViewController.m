//
//  ViewController.m
//  SliderRotate
//
//  Created by UzakYakinMBPro on 21/02/14.
//  Copyright (c) 2014 UzakYakinMBPro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    arrowImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arrow.png"]];
    arrowImage.frame = CGRectMake(0, 0, 320, 320);
    arrowImage.center = CGPointMake(320/2, 320/2+60);
    [self.view addSubview:arrowImage];

    
    changeSlider.minimumValue = 0;
    changeSlider.maximumValue = 360;
    changeSlider.value = 0;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeSlider:(id)sender {
    val = [(UISlider *)sender value];
    sliderLabel.text = [NSString stringWithFormat:@"%d", val];
    arrowImage.transform = CGAffineTransformMakeRotation(-M_PI*val/180);
}
@end
