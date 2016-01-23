#开始
引入LNImagePickerView.h

在ViewController中加入以下代码

LNImagePickerView *imagePickerView = [[LNImagePickerView alloc] initWithPointY:100.0f target:self];

imagePickerView.maxSelectCount = 4;

imagePickerView.delegate = self;

[imagePickerView setBackgroundColor:[UIColor whiteColor]];

[self.view addSubview:imagePickerView];

![image1](https://github.com/onlylin/LNImagePickerDemo/blob/master/LNImagePickerDemo/image1.png)

图片选择

![image2](https://github.com/onlylin/LNImagePickerDemo/blob/master/LNImagePickerDemo/image2.png)

图片浏览

![image3](https://github.com/onlylin/LNImagePickerDemo/blob/master/LNImagePickerDemo/image3.png)

#实现LNImagePickerViewDelegate代理协议
- (void)imagePickerView:(LNImagePickerView *)imagePickerView imageView:(UIImageView *)imageView;
