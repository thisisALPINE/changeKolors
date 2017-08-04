//
//  ViewController.m
//  changeKolors
//
//  Created by Mike Prisciano on 28/06/17.
//  Copyright © 2017 Mike Prisciano. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //self.colorLabel.layer.cornerRadius = 259;
    self.colorLabel.clipsToBounds = true;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)greenBtn:(id)sender {
    
    UIColor *green = [UIColor colorWithRed:0.38 green:1.00 blue:0.00 alpha:1.0];
    
    [self.colorLabel setBackgroundColor:green];
    
    
    
}

- (IBAction)blueBtn:(id)sender {
    
    UIColor *blue = [UIColor colorWithRed:0.00 green:0.58 blue:1.00 alpha:1.0];
    
    [self.colorLabel setBackgroundColor:blue];
    
    
    
}

- (IBAction)redBtn:(id)sender {
    
    UIColor *red = [UIColor colorWithRed:1.00 green:0.00 blue:0.00 alpha:1.0];
    [self.colorLabel setBackgroundColor:red];
    
}

- (IBAction)orangeBtn:(id)sender {
    
    UIColor *orange = [UIColor colorWithRed:1.00 green:0.60 blue:0.00 alpha:1.0];
    [self.colorLabel setBackgroundColor:orange];
    
}

- (IBAction)violetBtn:(id)sender {
    
    UIColor *violet = [UIColor colorWithRed:0.68 green:0.00 blue:1.00 alpha:1.0];
    [self.colorLabel setBackgroundColor:violet];
    
}

- (IBAction)randomBtn:(id)sender {
    
    int r = arc4random() % 255;
    int g = arc4random() % 255;
    int b = arc4random() % 255;
    
    UIColor *color = [UIColor colorWithRed:(r/255.0) green:(g/255.0) blue:(b/255.0) alpha:1.0];
    
    [self.colorLabel setBackgroundColor:color];
    
}

- (IBAction)resetBtn:(id)sender {
    
    UIColor *white = [UIColor colorWithRed:1.00 green:1.00 blue:1.00 alpha:1.00];
    
    [self.colorLabel setBackgroundColor:white];
    
}

- (IBAction)switchBtn:(id)sender {
    
    UISwitch *switchObject = (UISwitch *)sender;
    
    NSArray *the_butts = @[self.greenBtnProp, self.blueBtnProp, self.redBtnProp, self.violetBtnProp, self.randomBtnProp, self.orangeBtnProp];
    
    if (switchObject.isOn) {
        
        for (UIButton *d in the_butts) {
            
            d.enabled = YES;
            
        }
        
    }
    
    else {
        
        for (UIButton *d in the_butts) {
            
            d.enabled = NO;
            
        }
        
    }
    
}

- (IBAction)plusOrNo:(id)sender {
    
    UIStepper *stepper = (UIStepper *)sender;
    
    stepper.maximumValue = 1000;
    stepper.minimumValue = 0;
    
    if (stepper) {
        
        self.colorLabel.layer.cornerRadius += 10;
        NSLog(@"plus");
        
    }
    
    else {
        
        self.colorLabel.layer.cornerRadius -= 10;
        NSLog(@"minus");
    }
    
}

@end
