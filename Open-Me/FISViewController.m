//
//  FISViewController.m
//  Open-Me
//
//  Created by Joe Burgess on 3/4/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISViewController.h"

@interface FISViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UIButton *one;
@property (weak, nonatomic) IBOutlet UIButton *two;
@property (weak, nonatomic) IBOutlet UIButton *three;
@property (weak, nonatomic) IBOutlet UIButton *four;
@property (weak, nonatomic) IBOutlet UIButton *five;
@property (weak, nonatomic) IBOutlet UIButton *six;
@property (weak, nonatomic) IBOutlet UIButton *seven;
@property (weak, nonatomic) IBOutlet UIButton *eight;
@property (weak, nonatomic) IBOutlet UIButton *nine;
@property (weak, nonatomic) IBOutlet UIButton *zero;
@property (weak, nonatomic) IBOutlet UIButton *point;
@property (weak, nonatomic) IBOutlet UIButton *divide;
@property (weak, nonatomic) IBOutlet UIButton *multiply;
@property (weak, nonatomic) IBOutlet UIButton *subtract;
@property (weak, nonatomic) IBOutlet UIButton *add;
@property (weak, nonatomic) IBOutlet UIButton *equals;

@property (strong, nonatomic) NSString *calcInput;

@end


@implementation FISViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.newCalculation = [[FISCalculator alloc]init];
    self.newCalculation.input = [[NSMutableArray alloc]init];
    self.newCalculation.operation = [[NSMutableArray alloc]init];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)oneButtonTapped:(id)sender {
    self.calcInput = @"1";
    [self.newCalculation.input addObject:self.calcInput];
    self.textField.text = self.calcInput;
}

- (IBAction)twoButtonTapped:(id)sender {
    self.calcInput = @"2";
    [self.newCalculation.input addObject:self.calcInput];
    self.textField.text = self.calcInput;
}

- (IBAction)threeButtonTapped:(id)sender {
    self.calcInput = @"3";
    [self.newCalculation.input addObject:self.calcInput];
    self.textField.text = self.calcInput;
}

- (IBAction)fourButtonTapped:(id)sender {
    self.calcInput = @"4";
    [self.newCalculation.input addObject:self.calcInput];
    self.textField.text = self.calcInput;
}

- (IBAction)fiveButtonTapped:(id)sender {
    self.calcInput = @"5";
    [self.newCalculation.input addObject:self.calcInput];
    self.textField.text = self.calcInput;
}

- (IBAction)sixButtonTapped:(id)sender {
    self.calcInput = @"6";
    [self.newCalculation.input addObject:self.calcInput];
    self.textField.text = self.calcInput;
}

- (IBAction)sevenButtonTapped:(id)sender {
    self.calcInput = @"7";
    [self.newCalculation.input addObject:self.calcInput];
    self.textField.text = self.calcInput;
}

- (IBAction)eightButtonTapped:(id)sender {
    self.calcInput = @"8";
    [self.newCalculation.input addObject:self.calcInput];
    self.textField.text = self.calcInput;
}

- (IBAction)nineButtonTapped:(id)sender {
    self.calcInput = @"9";
    [self.newCalculation.input addObject:self.calcInput];
    self.textField.text = self.calcInput;
}

- (IBAction)zeroButtonTapped:(id)sender {
    self.calcInput = @"0";
    [self.newCalculation.input addObject:self.calcInput];
    self.textField.text = self.calcInput;
}

- (IBAction)pointButtonTapped:(id)sender {
}

- (IBAction)divideButtonTapped:(id)sender {
    self.calcInput = @"/";
    [self.newCalculation.operation addObject:self.calcInput];
    self.textField.text = self.calcInput;
}

- (IBAction)multiplyButtonTapped:(id)sender {
    self.calcInput = @"*";
    [self.newCalculation.input addObject:self.calcInput];
    self.textField.text = self.calcInput;
}

- (IBAction)subtractButtonTapped:(id)sender {
    self.calcInput = @"-";
    [self.newCalculation.input addObject:self.calcInput];
    self.textField.text = self.calcInput;
}

- (IBAction)addButtonTapped:(id)sender {
    self.calcInput = @"+";
    [self.newCalculation.input addObject:self.calcInput];
    self.textField.text = self.calcInput;
}

- (IBAction)equalsButtonTapped:(id)sender {
    self.calcInput = @"=";
    [self.newCalculation.input addObject:self.calcInput];
    self.textField.text = self.calcInput;
}


@end
