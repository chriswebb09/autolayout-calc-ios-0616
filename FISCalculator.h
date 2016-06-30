//
//  FISCalculator.h
//  Open-Me
//
//  Created by Christopher Webb-Orenstein on 6/30/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISCalculator : NSObject

@property (strong, nonatomic) NSMutableArray *operation;
@property (strong, nonatomic) NSMutableArray *input;
@property (nonatomic) NSUInteger result;



-(void)calculate;
//
//-(void)multiply;
//
//-(void)divide;
//
//-(void)subtract;
//
//-(void)add;

@end
