//
//  ViewController.m
//  OCTarget
//
//  Created by 唐道勇 on 2017/12/8.
//  Copyright © 2017年 唐道勇. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
     同一个项目中创建target:
     1.选中一个现有的target，点击右键，选择Duplicate，此时创建了一个copy。
     2.修改target的名字。
     3.修改plist的名字。
     4.修改scheme的名字。(2.3.4的名字需要一样)
     5.选择新的plist文件，并修改项目名称和version及team。
     6.设置宏定义以区分新旧target。build Settings -> Preprocessing -> Preprocessor Macros 添加宏定义
     */
#ifdef ONE
    NSLog(@"ONE打印了");
    self.view.backgroundColor = [UIColor redColor];
#endif
    
#ifdef TWO
    NSLog(@"TWO打印了");
    self.view.backgroundColor = [UIColor blueColor];
#endif
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
