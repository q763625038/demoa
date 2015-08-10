//
//  ViewController.m
//  demo
//
//  Created by apple on 15/8/7.
//  Copyright (c) 2015年 alai. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveCocoa.h>

@interface ViewController ()
{

}
@property (nonatomic,copy)NSString *name;
@property (nonatomic,copy)NSString *demoName;
@property (nonatomic,strong)UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor redColor];
    
    UITextField *textField =[self textFieldWithFrame:CGRectMake(100, 100, 200, 50)];
    [self.view addSubview:textField];
    
    UITextField *textField2 =[self textFieldWithFrame:CGRectMake(100, 230, 200, 50)];
    [self.view addSubview:textField2];
    
    _button =[UIButton buttonWithType:UIButtonTypeCustom];
    _button.frame = CGRectMake(100, 50, 100, 50);
    _button.backgroundColor =[UIColor greenColor];
    [_button setTitle:@"Done" forState:UIControlStateNormal];
    [_button setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    [self.view addSubview:_button];
    

    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}



-(UITextField *)textFieldWithFrame:(CGRect)frame{
    
    UITextField *textField =[[UITextField alloc]initWithFrame:frame];
    textField.backgroundColor =[UIColor redColor];
    
    return textField;
}



- (void)demoFunc2{
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        NSLog(@"welocme");
    });
    
}


- (void)demoFunc{
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        NSLog(@"hello world");
    });
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
