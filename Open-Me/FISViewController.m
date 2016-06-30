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


-(void)updateViews:(NSString *)input {
    NSArray *operationsArray = @[@"/", @"*", @"*", @"+", @"-"];
    if ([operationsArray containsObject:input]) {
        [self.newCalculation.operation addObject:input];
    }
    [self.newCalculation.input addObject:input];
    self.textField.text = self.calcInput;
}

- (IBAction)oneButtonTapped:(id)sender {
    self.calcInput = @"1";
    [self updateViews:self.calcInput];
}

- (IBAction)twoButtonTapped:(id)sender {
    self.calcInput = @"2";
    [self updateViews:self.calcInput];
}

- (IBAction)threeButtonTapped:(id)sender {
    self.calcInput = @"3";
    [self updateViews:self.calcInput];
}

- (IBAction)fourButtonTapped:(id)sender {
    self.calcInput = @"4";
    [self updateViews:self.calcInput];
}

- (IBAction)fiveButtonTapped:(id)sender {
    self.calcInput = @"5";
    [self updateViews:self.calcInput];
}

- (IBAction)sixButtonTapped:(id)sender {
    self.calcInput = @"6";
    [self updateViews:self.calcInput];
}

- (IBAction)sevenButtonTapped:(id)sender {
    self.calcInput = @"7";
    [self updateViews:self.calcInput];
}

- (IBAction)eightButtonTapped:(id)sender {
    self.calcInput = @"8";
    [self updateViews:self.calcInput];
}

- (IBAction)nineButtonTapped:(id)sender {
    self.calcInput = @"9";
    [self updateViews:self.calcInput];
}

- (IBAction)zeroButtonTapped:(id)sender {
    self.calcInput = @"0";
    [self updateViews:self.calcInput];
}

- (IBAction)pointButtonTapped:(id)sender {
}

- (IBAction)divideButtonTapped:(id)sender {
    self.calcInput = @"/";
    [self updateViews:self.calcInput];
}

- (IBAction)multiplyButtonTapped:(id)sender {
    self.calcInput = @"*";
    [self updateViews:self.calcInput];
}

- (IBAction)subtractButtonTapped:(id)sender {
    self.calcInput = @"-";
    [self updateViews:self.calcInput];
}

- (IBAction)addButtonTapped:(id)sender {
    self.calcInput = @"+";
    [self updateViews:self.calcInput];
}

- (IBAction)equalsButtonTapped:(id)sender {
    self.calcInput = @"=";
    [self updateViews:self.calcInput];
}


@end
