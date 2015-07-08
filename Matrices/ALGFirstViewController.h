//
//  ALGFirstViewController.h
//  Matrices
//
//  Created by Trey Fortmuller on 6/1/13.
//  Copyright (c) 2013 Trey Fortmuller. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ALGFirstViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *matrixASpota;
@property (weak, nonatomic) IBOutlet UITextField *matrixASpotb;
@property (weak, nonatomic) IBOutlet UITextField *matrixASpotc;
@property (weak, nonatomic) IBOutlet UITextField *matrixASpotd;

@property (weak, nonatomic) IBOutlet UITextField *matrixBSpota;
@property (weak, nonatomic) IBOutlet UITextField *matrixBSpotb;

@property (strong, nonatomic) IBOutlet UILabel *xLabel;
@property (strong, nonatomic) IBOutlet UILabel *yLabel;
@property (strong, nonatomic) IBOutlet UILabel *detLabel;
@property (strong, nonatomic) IBOutlet UILabel *detEqualsLabel;
@property (strong, nonatomic) IBOutlet UILabel *xEqualsLabel;
@property (strong, nonatomic) IBOutlet UILabel *yEqualsLabel;
@property (strong, nonatomic) IBOutlet UILabel *groupLabel;
@property (strong, nonatomic) IBOutlet UILabel *eqLabel1;
@property (strong, nonatomic) IBOutlet UILabel *eqLabel2;
@end
