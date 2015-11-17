//
//  NSTimer+add.h
//  CarouselView
//
//  Created by 09 on 15/11/15.
//  Copyright © 2015年 yifan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (add)

- (void)pauseTimer;
- (void)resumeTimer;
- (void)resumeTimerAfterTimeInterval:(NSTimeInterval)interval;

@end
