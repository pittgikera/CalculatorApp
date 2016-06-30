//
//  ViewController.h
//  CalculatorApp
//
//  Created by Peter Gikera on 30/06/2016.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *calculatorDisplay;
- (IBAction)numberPressed:(UIButton *)sender;
- (IBAction)calculationPressed:(id)sender;
- (IBAction)equalsPressed;

@property (nonatomic) BOOL typingNumber; //check if user is typing a number
@property (nonatomic) int firstNumber;
@property (nonatomic) int secondNumber;
@property (nonatomic, copy) NSString *operation; // plus or minus operation

@end

