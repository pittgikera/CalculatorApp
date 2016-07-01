//
//  ViewController.m
//  CalculatorApp
//
//  Created by Peter Gikera on 30/06/2016.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)numberPressed:(UIButton *)sender {
    NSString *number = sender.currentTitle;
    if (self.typingNumber)
    {
        self.calculatorDisplay.text = [self.calculatorDisplay.text stringByAppendingString:number];
    } else
    {
        self.calculatorDisplay.text = number;
        self.typingNumber = YES;
    }
}

- (IBAction)calculationPressed:(id)sender {
    self.typingNumber = NO;
    self.firstNumber = [self.calculatorDisplay.text intValue];
    self.operation = [sender currentTitle];
}

- (IBAction)equalsPressed {
    self.typingNumber = NO;
    self.secondNumber = [self.calculatorDisplay.text intValue];
    
    long long result = 0;
    
    if ([self.operation isEqualToString:@"+"])
    {
        result = self.firstNumber + self.secondNumber;
    }
    else if ([self.operation isEqualToString:@"-"])
    {
        result = self.firstNumber - self.secondNumber;

    }else if ([self.operation isEqualToString:@"X"])
    {
        result =  self.firstNumber * self.secondNumber;
    }else if ([self.operation isEqualToString:@"/"])
    {
        result =  self.firstNumber / self.secondNumber;
    }
    
    self.calculatorDisplay.text = [NSString stringWithFormat:@"%qi", result];
}

- (IBAction)multiplyPressed:(UIButton *)sender {
    self.typingNumber = NO;
    self.firstNumber = [self.calculatorDisplay.text intValue];
    self.operation = [sender currentTitle];
}

- (IBAction)dividePressed:(UIButton *)sender {
    self.typingNumber = NO;
    self.firstNumber = [self.calculatorDisplay.text intValue];
    self.operation = [sender currentTitle];
}

@end
