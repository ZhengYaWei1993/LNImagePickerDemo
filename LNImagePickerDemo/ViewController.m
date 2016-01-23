//
//  ViewController.m
//  LNImagePickerDemo
//
//  Created by 林洁 on 16/1/14.
//  Copyright © 2016年 onlylin. All rights reserved.
//

#import "ViewController.h"
#import "LNImagePickerView.h"

@interface ViewController ()<LNImagePickerViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    LNImagePickerView *imagePickerView = [[LNImagePickerView alloc] initWithPointY:100.0f target:self];
    imagePickerView.maxSelectCount = 4;
    imagePickerView.delegate = self;
    [imagePickerView setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:imagePickerView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - LNImagePickerView Delegate
- (void)imagePickerView:(LNImagePickerView *)imagePickerView imageView:(UIImageView *)imageView{
    NSLog(@"点击了第%ld张图片",imageView.tag);
}

@end
