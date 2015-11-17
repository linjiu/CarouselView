//
//  ViewController.m
//  CarouselView
//
//  Created by 09 on 15/11/15.
//  Copyright © 2015年 yifan. All rights reserved.
//
#define kWidth [UIScreen mainScreen].bounds.size.width

#import "ViewController.h"
#import "CarouselSV.h"
@interface ViewController ()

@property (nonatomic, strong) CarouselSV *scrollV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSMutableArray *viewsArray = [@[] mutableCopy];
    for (int i = 0; i < 5; ++i) {
        UIImageView *tempView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, kWidth, 250)];
        NSString *imageName = [NSString stringWithFormat:@"%d",i+1];
        tempView.image = [UIImage imageNamed:imageName];
        [viewsArray addObject:tempView];
    }
    
    self.scrollV = [[CarouselSV alloc] initWithFrame:CGRectMake(0, 0, kWidth, 250) animationDuration:1.5f];
    
    self.scrollV.fetchContentViewAtIndex = ^UIView *(NSInteger pageIndex){
        return viewsArray[pageIndex];
    };
    self.scrollV.totalPagesCount = ^NSInteger(void){
        return 5;
    };
    self.scrollV.TapActionBlock = ^(NSInteger pageIndex){
        NSLog(@"点击了第%ld个",(long)pageIndex);
    };
    [self.view addSubview:self.scrollV];




}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
