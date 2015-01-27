//
//  ViewController.m
//  ModernizationNumberInput
//
//  Created by IOS－001 on 15/1/26.
//  Copyright (c) 2015年 E-Techco Information Technologies Co., LTD. All rights reserved.
//

#import "ViewController.h"
#import "NumericalInputTextField.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
// @"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9"
    NumericalInputTextField *textField1 = [[NumericalInputTextField alloc] initWithFrame:CGRectMake(50, 120, 220, 50)];
    textField1.font = [UIFont systemFontOfSize:25];
    textField1.backgroundColor = [UIColor lightGrayColor];
//    textField1.dotIndex = 2;
    textField1.inputTitle = @"请输入尿酸值";
//    NSDictionary *dict = @{kFractionalPartDataSource:@[@[@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9"],@[@"1",@"3"],@[@"1",@"3"]],
//                          kIntegralPartDataSource:@[@[@"0",@"1",@"2",@"3"],@[@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9"]]};
    NSDictionary *dict = @{kFractionalPartDataSource:@[@[@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9"],@[@"1",@"3"],@[@"1",@"3"]],
                           kIntegralPartDataSource:@[@[@"0"],@[@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9"]]};
    textField1.dataSourceDict = dict;
    
    
//    textField1.dataSource = @[@[@"0",@"1",@"2",@"3"],@[@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9"],@[@"."],@[@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9"],@[@"1",@"3"]];
    
    [self.view addSubview:textField1];
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        NSLog(@"设置尿酸");
//        textField1.inputTitle = @"输入错误啦";
//    });
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
