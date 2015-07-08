//
//  ALGSecondViewController.m
//  Matrices
//
//  Created by Trey Fortmuller on 6/1/13.
//  Copyright (c) 2013 Trey Fortmuller. All rights reserved.
//

#import "ALGSecondViewController.h"

@interface ALGSecondViewController ()

@end

@implementation ALGSecondViewController

@synthesize matrixASpota;
@synthesize matrixASpotb;
@synthesize matrixASpotc;
@synthesize matrixASpotd;
@synthesize matrixASpote;
@synthesize matrixASpotf;
@synthesize matrixASpotg;
@synthesize matrixASpoth;
@synthesize matrixASpoti;

@synthesize matrixBSpota;
@synthesize matrixBSpotb;
@synthesize matrixBSpotc;

@synthesize xLabel;
@synthesize yLabel;
@synthesize zLabel;
@synthesize detLabel;
@synthesize solveButton;
@synthesize clearButton;
@synthesize eqLabel1;
@synthesize eqLabel2;
@synthesize eqLabel3;
@synthesize groupLabel;
@synthesize xEqualsLabel;
@synthesize yEqualsLabel;
@synthesize zEqualsLabel;
@synthesize detEqualsLabel;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"3x3", @"3x3");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [matrixASpota setDelegate:self];
    [matrixASpotb setDelegate:self];
    [matrixASpotc setDelegate:self];
    [matrixASpotd setDelegate:self];
    [matrixBSpota setDelegate:self];
    [matrixBSpotb setDelegate:self];
    
}

- (IBAction)textFieldDoneEditing:(id)sender{
    [sender resignFirstResponder];
}

- (IBAction)backgroundTap:(id)sender{
    [matrixASpota resignFirstResponder];
    [matrixASpotb resignFirstResponder];
    [matrixASpotc resignFirstResponder];
    [matrixASpotd resignFirstResponder];
    [matrixASpote resignFirstResponder];
    [matrixASpotf resignFirstResponder];
    [matrixASpotg resignFirstResponder];
    [matrixASpoth resignFirstResponder];
    [matrixASpoti resignFirstResponder];
    [matrixBSpota resignFirstResponder];
    [matrixBSpotb resignFirstResponder];
    [matrixBSpotc resignFirstResponder];
    
}

- (IBAction) buttonPressed:(id)sender {
    
    [matrixASpota resignFirstResponder];
    [matrixASpotb resignFirstResponder];
    [matrixASpotc resignFirstResponder];
    [matrixASpotd resignFirstResponder];
    [matrixASpote resignFirstResponder];
    [matrixASpotf resignFirstResponder];
    [matrixASpotg resignFirstResponder];
    [matrixASpoth resignFirstResponder];
    [matrixASpoti resignFirstResponder];
    [matrixBSpota resignFirstResponder];
    [matrixBSpotb resignFirstResponder];
    [matrixBSpotc resignFirstResponder];
    
    NSString *AaValueStr = matrixASpota.text;
    NSString *AbValueStr = matrixASpotb.text;
    NSString *AcValueStr = matrixASpotc.text;
    NSString *AdValueStr = matrixASpotd.text;
    NSString *AeValueStr = matrixASpote.text;
    NSString *AfValueStr = matrixASpotf.text;
    NSString *AgValueStr = matrixASpotg.text;
    NSString *AhValueStr = matrixASpoth.text;
    NSString *AiValueStr = matrixASpoti.text;

    NSString *BaValueStr = matrixBSpota.text;
    NSString *BbValueStr = matrixBSpotb.text;
    NSString *BcValueStr = matrixBSpotc.text;

    float AaValue = [AaValueStr floatValue];
    float AbValue = [AbValueStr floatValue];
    float AcValue = [AcValueStr floatValue];
    float AdValue = [AdValueStr floatValue];
    float AeValue = [AeValueStr floatValue];
    float AfValue = [AfValueStr floatValue];
    float AgValue = [AgValueStr floatValue];
    float AhValue = [AhValueStr floatValue];
    float AiValue = [AiValueStr floatValue];

    float BaValue = [BaValueStr floatValue];
    float BbValue = [BbValueStr floatValue];
    float BcValue = [BcValueStr floatValue];

    //Determinant!
    float diagonal1 = (AaValue * AeValue * AiValue);
    float diagonal2 = (AbValue * AfValue * AgValue);
    float diagonal3 = (AcValue * AdValue * AhValue);
    float diagonal4 = (AgValue * AeValue * AcValue);
    float diagonal5 = (AhValue * AfValue * AaValue);
    float diagonal6 = (AiValue * AdValue * AbValue);
    
    float downsDiagonal = (diagonal1 + diagonal2 + diagonal3);
    float upsDiagonal = (diagonal4 + diagonal5 + diagonal6);
    
    float detValue = (downsDiagonal - upsDiagonal);
    NSString *detStr = [NSString stringWithFormat: @"%.02f", detValue];
    detLabel.text = detStr;
    
    //X Value!
    float xValue = (((BaValue*AeValue*AiValue) + (AbValue*AfValue*BcValue) + (AcValue*BbValue*AhValue)) -
                    ((BcValue*AeValue*AcValue) + (AhValue*AfValue*BaValue) + (AiValue*BbValue*AbValue))) / detValue;
    NSString *xStr = [NSString stringWithFormat: @"%.02f", xValue];
    xLabel.text = xStr;
    
    //Y Value!
    float yValue = (((AaValue*BbValue*AiValue) + (BaValue*AfValue*AgValue) + (AcValue*AdValue*BcValue)) -
                    ((AgValue*BbValue*AcValue) + (BcValue*AfValue*AaValue) + (AiValue*AdValue*BaValue))) / detValue;
    NSString *yStr = [NSString stringWithFormat: @"%.02f", yValue];
    yLabel.text = yStr;
    
    //Z Value!
    float zValue = (((AaValue*AeValue*BcValue) + (AbValue*BbValue*AgValue) + (BaValue*AdValue*AhValue)) -
                    ((AgValue*AeValue*BaValue) + (AhValue*BbValue*AaValue) + (BcValue*AdValue*AbValue))) / detValue;
    NSString *zStr = [NSString stringWithFormat: @"%.02f", zValue];
    zLabel.text = zStr;
    
    groupLabel.hidden = NO;
    xEqualsLabel.hidden = NO;
    yEqualsLabel.hidden = NO;
    zEqualsLabel.hidden = NO;
    detEqualsLabel.hidden = NO;

    eqLabel1.text = [NSString stringWithFormat: @"%.02fx + %.02fy + %.02fz = %.02f", AaValue, AbValue, AcValue, BaValue];
    eqLabel2.text = [NSString stringWithFormat: @"%.02fx + %.02fy + %.02fz = %.02f", AdValue, AeValue, AfValue, BbValue];
    eqLabel3.text = [NSString stringWithFormat: @"%.02fx + %.02fy + %.02fz = %.02f", AgValue, AhValue, AiValue, BcValue];

}

- (IBAction) clearButtonPressed:(id)sender {
    
    matrixASpota.text = nil;
    matrixASpotb.text = nil;
    matrixASpotc.text = nil;
    matrixASpotd.text = nil;
    matrixASpote.text = nil;
    matrixASpotf.text = nil;
    matrixASpotg.text = nil;
    matrixASpoth.text = nil;
    matrixASpoti.text = nil;

    matrixBSpota.text = nil;
    matrixBSpotb.text = nil;
    matrixBSpotc.text = nil;

    detLabel.text = nil;
    xLabel.text = nil;
    yLabel.text = nil;
    zLabel.text = nil;
    eqLabel1.text = nil;
    eqLabel2.text = nil;
    eqLabel3.text = nil;
    groupLabel.hidden = YES;
    xEqualsLabel.hidden = YES;
    yEqualsLabel.hidden = YES;
    zEqualsLabel.hidden = YES;
    detEqualsLabel.hidden = YES;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
