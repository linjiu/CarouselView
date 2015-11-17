//
//  NSTimer+add.m
//  CarouselView
//
//  Created by 09 on 15/11/15.
//  Copyright © 2015年 yifan. All rights reserved.
//

#import "NSTimer+add.h"

@implementation NSTimer (add)

-(void)pauseTimer
{
    if (![self isValid]) {
        return ;
    }
    [self setFireDate:[NSDate distantFuture]];
}


-(void)resumeTimer
{
    if (![self isValid]) {
        return ;
    }
    [self setFireDate:[NSDate date]];
}

- (void)resumeTimerAfterTimeInterval:(NSTimeInterval)interval
{
    if (![self isValid]) {
        return ;
    }
    [self setFireDate:[NSDate dateWithTimeIntervalSinceNow:interval]];
}

@end
