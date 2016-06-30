//
//  FISCalculator.m
//  Open-Me
//
//  Created by Christopher Webb-Orenstein on 6/30/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISCalculator.h"

@implementation FISCalculator

-(void)calculate {
    NSInteger index = 0;
        for (NSUInteger i = 0; i < self.input.count; i++)
        {
            if (index < 1)
            {
                NSString *numberOne = self.input[i];
                NSString *numberTwo = self.input[i + 1];
                if ([self.operation[i] isEqualToString:@"/"])
                {
                    NSUInteger numberOneInt = [numberOne integerValue];
                    NSUInteger numberTwoInt = [numberTwo integerValue];
                    self.result = numberOneInt / numberTwoInt;
                }
                else if ([self.operation[i] isEqualToString:@"+"])
                {
                    NSUInteger numberOneInt = [numberOne integerValue];
                    NSUInteger numberTwoInt = [numberTwo integerValue];
                    self.result = numberOneInt + numberTwoInt;
                }
                else if ([self.operation[i] isEqualToString:@"*"])
                {
                    NSUInteger numberOneInt = [numberOne integerValue];
                    NSUInteger numberTwoInt = [numberTwo integerValue];
                    self.result = numberOneInt * numberTwoInt;
                }
                else if ([self.operation[i] isEqualToString:@"-"])
                {
                    NSUInteger numberOneInt = [numberOne integerValue];
                    NSUInteger numberTwoInt = [numberTwo integerValue];
                    self.result = numberOneInt - numberTwoInt;
                }
                index += 1;
            }
            
            if (index > 0)
            {
                NSInteger nextNumber = [self.input[i + 1] integerValue];
                if ([self.operation[i] isEqualToString:@"/"])
                {
                    self.result = self.result / (NSUInteger)nextNumber;
                }
                else if ([self.operation[i] isEqualToString:@"+"])
                {
                    self.result = self.result + (NSUInteger)nextNumber;
                }
                else if ([self.operation[i] isEqualToString:@"*"])
                {
                    self.result = (self.result * (NSUInteger)nextNumber);
                }
                else if ([self.operation[i] isEqualToString:@"-"])
                {
                    self.result = self.result - (NSUInteger)nextNumber;
                }
            }
        }
}

//-(void)multiply {
//    
//}
//
//-(void)divide {
//    
//}
//
//-(void)subtract {
//    
//}
//
//-(void)add {
//    
//}


@end
