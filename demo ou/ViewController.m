//
//  ViewController.m
//  demo ou
//
//  Created by ouyq on 3/28/15.
//  Copyright (c) 2015 iAround. All rights reserved.
//

#import "ViewController.h"
#import "RTLButton.h"
#import "MyButton.h"


@interface ViewController ()<UITextFieldDelegate>

@property (retain,nonatomic) UITextField *textField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    RTLButton *testBtn = [RTLButton buttonWithType:UIButtonTypeRoundedRect];
    testBtn.frame = CGRectMake(40, 200, 240, 40);
    [testBtn setBackgroundColor:[UIColor redColor]];
    [testBtn setTitle:@"领取" forState:UIControlStateNormal];
    [testBtn setImage:[UIImage imageNamed:@"icon_newfan_yes.png"] forState:UIControlStateNormal];
    [testBtn setImageEdgeInsets:UIEdgeInsetsMake(0, -5, 0, 0)];
    [testBtn setTitleEdgeInsets:UIEdgeInsetsMake(0, 5, 0, 0)];
    [testBtn addTarget:self action:@selector(doAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testBtn];
    
    
    _textField = [[UITextField alloc]initWithFrame:CGRectMake(40, 300, 240, 40)];
    _textField.delegate = self;
    [self.view addSubview:_textField];
}

- (void)doAction:(id)sender
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
