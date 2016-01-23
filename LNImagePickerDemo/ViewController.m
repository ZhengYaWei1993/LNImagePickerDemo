//
//  ViewController.m
//  LNImagePickerDemo
//
//  Created by 林洁 on 16/1/14.
//  Copyright © 2016年 onlylin. All rights reserved.
//

#import "ViewController.h"
#import "LNImagePickerView.h"

@interface ViewController ()<LNImagePickerViewDelegate>{
    LNImagePickerView *imagePickerView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    imagePickerView = [[LNImagePickerView alloc] initWithPointY:100.0f target:self];
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
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil message:[NSString stringWithFormat:@"你点击了第%ld张图片",imageView.tag + 1] delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
    [alertView show];

}

- (IBAction)buttonAction:(id)sender {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil message:[NSString stringWithFormat:@"总共选择了%ld张图片",[[imagePickerView photoAssets] count]] delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
    [alertView show];
}
@end
