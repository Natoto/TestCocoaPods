//
//  ViewController.m
//  TestCocoaPods
//
//  Created by Nonato on 14-8-25.
//  Copyright (c) 2014年 Nonato. All rights reserved.
//

#import "ViewController.h"
#import "bee.h"
@interface ViewController ()

@end

@implementation ViewController


ON_SIGNAL2(BeeUIBoard, signal)
{
    if ([signal is:BeeUIBoard.CREATE_VIEWS]) {
        BeeUILabel *label=[[BeeUILabel alloc] initWithFrame:CGRectMake(10, 100, 200, 40)];
        label.text = @"测试PODS";
        [self.view addSubview:label];
    }
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
