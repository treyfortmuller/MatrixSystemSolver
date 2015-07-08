//
//  ALGThirdViewController.m
//  Matrices
//
//  Created by Trey Fortmuller on 6/1/13.
//  Copyright (c) 2013 Trey Fortmuller. All rights reserved.
//

#import "ALGThirdViewController.h"

@interface ALGThirdViewController ()

@end

@implementation ALGThirdViewController
@synthesize matrixASpota;
@synthesize matrixASpotb;
@synthesize matrixASpotc;
@synthesize matrixASpotd;

@synthesize matrixBSpota;
@synthesize matrixBSpotb;

@synthesize xLabel;
@synthesize yLabel;
@synthesize detLabel;
@synthesize inverseLabel;
@synthesize solveButton;
@synthesize clearButton;
@synthesize groupLabel;
@synthesize eqLabel1;
@synthesize eqLabel2;
@synthesize xEqualsLabel;
@synthesize yEqualsLabel;
@synthesize detEqualsLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Inverse", @"Inverse");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
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
    [matrixBSpota resignFirstResponder];
    [matrixBSpotb resignFirstResponder];
    
    inverseLabel.text = @"Matrix A";
}

- (IBAction) buttonPressed:(id)sender {
    
    [matrixASpota resignFirstResponder];
    [matrixASpotb resignFirstResponder];
    [matrixASpotc resignFirstResponder];
    [matrixASpotd resignFirstResponder];
    [matrixBSpota resignFirstResponder];
    [matrixBSpotb resignFirstResponder];
    
    NSString *AaValueStr = matrixASpota.text;
    NSString *AbValueStr = matrixASpotb.text;
    NSString *AcValueStr = matrixASpotc.text;
    NSString *AdValueStr = matrixASpotd.text;
    NSString *BaValueStr = matrixBSpota.text;
    NSString *BbValueStr = matrixBSpotb.text;
    
    float AaValue = [AaValueStr floatValue];
    float AbValue = [AbValueStr floatValue];
    float AcValue = [AcValueStr floatValue];
    float AdValue = [AdValueStr floatValue];
    float BaValue = [BaValueStr floatValue];
    float BbValue = [BbValueStr floatValue];
    
    
    //Determinant!
    float detValue = (AaValue * AdValue) - (AbValue * AcValue);
    NSString *detStr = [NSString stringWithFormat: @"%.02f", detValue];
    detLabel.text = detStr;
    
    //Inverse Matrix!
    inverseLabel.text = @"Matrix A⁻¹";
    //Aa
    float inverseAaValue = (AdValue) * (1 / detValue);
    NSString *inverseAaStr = [NSString stringWithFormat: @"%.02f", inverseAaValue];
    matrixASpota.text = inverseAaStr;
    //Ab
    float inverseAbValue =  ((AbValue) * (-1)) * (1 / detValue);
    NSString *inverseAbStr = [NSString stringWithFormat: @"%.02f", inverseAbValue];
    matrixASpotb.text = inverseAbStr;
    //Ac
    float inverseAcValue =  ((AcValue) * (-1)) * (1 / detValue);
    NSString *inverseAcStr = [NSString stringWithFormat: @"%.02f", inverseAcValue];
    matrixASpotc.text = inverseAcStr;
    //Ad
    float inverseAdValue = (AaValue) * (1 / detValue);
    NSString *inverseAdStr = [NSString stringWithFormat: @"%.02f", inverseAdValue];
    matrixASpotd.text = inverseAdStr;
    
    //Value For X!
    float xValue = (AaValue * BaValue) + (AbValue * BbValue);
    NSString *xStr = [NSString stringWithFormat: @"%.02f", xValue];
    xLabel.text = xStr;
    //Value For Y!
    float yValue = (AcValue * BaValue) + (AdValue * BbValue);
    NSString *yStr = [NSString stringWithFormat: @"%.02f", yValue];
    yLabel.text = yStr;
    
    groupLabel.hidden = NO;
    xEqualsLabel.hidden = NO;
    yEqualsLabel.hidden = NO;
    detEqualsLabel.hidden = NO;

    eqLabel1.text = [NSString stringWithFormat: @"%.02fx + %.02fy = %.02f", AaValue, AbValue, BaValue];
    eqLabel2.text = [NSString stringWithFormat: @"%.02fx + %.02fy = %.02f", AcValue, AdValue, BbValue];
}

- (IBAction) clearButtonPressed:(id)sender {
    
    matrixASpota.text = nil;
    matrixASpotb.text = nil;
    matrixASpotc.text = nil;
    matrixASpotd.text = nil;
    matrixBSpota.text = nil;
    matrixBSpotb.text = nil;
    
    detLabel.text = nil;
    xLabel.text = nil;
    yLabel.text = nil;
    groupLabel.hidden = YES;
    eqLabel1.text = nil;
    eqLabel2.text =nil;
    inverseLabel.text = @"Matrix A";
    xEqualsLabel.hidden = YES;
    yEqualsLabel.hidden = YES;
    detEqualsLabel.hidden = YES;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
