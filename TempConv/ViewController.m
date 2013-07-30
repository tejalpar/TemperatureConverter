//
//  ViewController.m
//  TempConv
//
//  Created by tejalp on 7/30/13.
//  Copyright (c) 2013 tejalp. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	//
    
    self.fahrenheit.keyboardType = UIKeyboardTypeDecimalPad;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)convert:(id)sender {
    
    if (![self.fahrenheit.text isEqualToString:@""])
    {
        float f = [[self.fahrenheit text] floatValue];
        float cel = (f - 32.0f) * (5.0f/9.0f);
        [self.celsius setText:[NSString stringWithFormat:@"%3.2f", cel]];
    
        [self.fahrenheit resignFirstResponder];
    }
    else if (![self.celsius.text isEqualToString:@""])
    {
        float c = [[self.celsius text] floatValue];
        float fah = (c *(9.0f/5.0f))+ 32.0f;
        [self.fahrenheit setText:[NSString stringWithFormat:@"%3.2f", fah]];
        
        [self.celsius resignFirstResponder];
    }
    
}
@end
