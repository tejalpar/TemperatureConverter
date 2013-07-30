//
//  ViewController.h
//  TempConv
//
//  Created by tejalp on 7/30/13.
//  Copyright (c) 2013 tejalp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *fahrenheit;
@property (weak, nonatomic) IBOutlet UITextField *celsius;
- (IBAction)convert:(id)sender;

@end
