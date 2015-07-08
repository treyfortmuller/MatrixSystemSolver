//
//  ALGSecondViewController.h
//  Matrices
//
//  Created by Trey Fortmuller on 6/1/13.
//  Copyright (c) 2013 Trey Fortmuller. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ALGSecondViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *matrixASpota;
@property (weak, nonatomic) IBOutlet UITextField *matrixASpotb;
@property (weak, nonatomic) IBOutlet UITextField *matrixASpotc;
@property (weak, nonatomic) IBOutlet UITextField *matrixASpotd;
@property (weak, nonatomic) IBOutlet UITextField *matrixASpote;
@property (weak, nonatomic) IBOutlet UITextField *matrixASpotf;
@property (weak, nonatomic) IBOutlet UITextField *matrixASpotg;
@property (weak, nonatomic) IBOutlet UITextField *matrixASpoth;
@property (weak, nonatomic) IBOutlet UITextField *matrixASpoti;

@property (weak, nonatomic) IBOutlet UITextField *matrixBSpota;
@property (weak, nonatomic) IBOutlet UITextField *matrixBSpotb;
@property (weak, nonatomic) IBOutlet UITextField *matrixBSpotc;


@property (strong, nonatomic) IBOutlet UILabel *xLabel;
@property (strong, nonatomic) IBOutlet UILabel *yLabel;
@property (strong, nonatomic) IBOutlet UILabel *zLabel;
@property (strong, nonatomic) IBOutlet UILabel *detLabel;
@property (strong, nonatomic) IBOutlet UIButton *solveButton;
@property (strong, nonatomic) IBOutlet UIButton *clearButton;
@property (strong, nonatomic) IBOutlet UILabel *groupLabel;
@property (strong, nonatomic) IBOutlet UILabel *eqLabel1;
@property (strong, nonatomic) IBOutlet UILabel *eqLabel2;
@property (strong, nonatomic) IBOutlet UILabel *eqLabel3;
@property (strong, nonatomic) IBOutlet UILabel *xEqualsLabel;
@property (strong, nonatomic) IBOutlet UILabel *yEqualsLabel;
@property (strong, nonatomic) IBOutlet UILabel *zEqualsLabel;
@property (strong, nonatomic) IBOutlet UILabel *detEqualsLabel;


@end
