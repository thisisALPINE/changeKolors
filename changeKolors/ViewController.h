//
//  ViewController.h
//  changeKolors
//
//  Created by Mike Prisciano on 28/06/17.
//  Copyright © 2017 Mike Prisciano. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *colorLabel;
@property (nonatomic) BOOL *isAllowed;
@property (weak, nonatomic) IBOutlet UISwitch *isOnOrNot;

@property (weak, nonatomic) IBOutlet UIButton *greenBtnProp;
@property (weak, nonatomic) IBOutlet UIButton *blueBtnProp;
@property (weak, nonatomic) IBOutlet UIButton *redBtnProp;
@property (weak, nonatomic) IBOutlet UIButton *orangeBtnProp;
@property (weak, nonatomic) IBOutlet UIButton *violetBtnProp;
@property (weak, nonatomic) IBOutlet UIButton *randomBtnProp;

- (IBAction)greenBtn:(id)sender;
- (IBAction)blueBtn:(id)sender;
- (IBAction)redBtn:(id)sender;
- (IBAction)orangeBtn:(id)sender;
- (IBAction)violetBtn:(id)sender;
- (IBAction)randomBtn:(id)sender;
- (IBAction)resetBtn:(id)sender;
- (IBAction)switchBtn:(id)sender;

- (IBAction)plusOrNo:(id)sender;


@end

