//
//  ALGFirstViewController.m
//  Matrices
//
//  Created by Trey Fortmuller on 6/1/13.
//  Copyright (c) 2013 Trey Fortmuller. All rights reserved.
//

#import "ALGFirstViewController.h"

@interface ALGFirstViewController ()

@end

@implementation ALGFirstViewController
@synthesize matrixASpota;
@synthesize matrixASpotb;
@synthesize matrixASpotc;
@synthesize matrixASpotd;

@synthesize matrixBSpota;
@synthesize matrixBSpotb;

@synthesize xLabel;
@synthesize yLabel;
@synthesize detLabel;
@synthesize xEqualsLabel;
@synthesize yEqualsLabel;
@synthesize detEqualsLabel;
@synthesize groupLabel;
@synthesize eqLabel1;
@synthesize eqLabel2;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"2x2", @"2x2");
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

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    [matrixASpota resignFirstResponder];
    [matrixASpotb resignFirstResponder];
    [matrixASpotc resignFirstResponder];
    [matrixASpotd resignFirstResponder];
    [matrixBSpota resignFirstResponder];
    [matrixBSpotb resignFirstResponder];
    
    return YES;
}

- (IBAction)backgroundTap:(id)sender {
    [matrixASpota resignFirstResponder];
    [matrixASpotb resignFirstResponder];
    [matrixASpotc resignFirstResponder];
    [matrixASpotd resignFirstResponder];
    [matrixBSpota resignFirstResponder];
    [matrixBSpotb resignFirstResponder];

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
    detEqualsLabel.hidden = NO;
    
    //Value For X!
    float xValue = ((BaValue * AdValue) - (BbValue * AbValue)) / detValue;
    NSString *xStr = [NSString stringWithFormat: @"%.02f", xValue];
    xLabel.text = xStr;
    xEqualsLabel.hidden = NO;
    
    //Value For Y!
    float yValue = ((AaValue * BbValue) - (AcValue * BaValue)) / detValue;
    NSString *yStr = [NSString stringWithFormat: @"%.02f", yValue];
    yLabel.text = yStr;
    yEqualsLabel.hidden = NO;
    
    NSLog(@"X = %@", xStr);
    NSLog(@"Y = %@", yStr);
    
    groupLabel.hidden = NO;
    
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
    xEqualsLabel.hidden = YES;
    yEqualsLabel.hidden = YES;
    detEqualsLabel.hidden = YES;
    groupLabel.hidden = YES;
    eqLabel1.text = nil;
    eqLabel2.text =nil;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
