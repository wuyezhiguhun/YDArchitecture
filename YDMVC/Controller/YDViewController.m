//
//  YDViewController.m
//  YDMVC
//
//  Created by 王允顶 on 2018/9/11.
//  Copyright © 2018年 王允顶. All rights reserved.
//

#import "YDViewController.h"
#import "YDHomeView.h"

@interface YDViewController ()

@property (nonatomic, strong) YDHomeView *homeView;

@end

@implementation YDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"MVC";
    [self.view addSubview:self.homeView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -- get 函数
- (YDHomeView *)homeView {
    if (!_homeView) {
        _homeView = [[YDHomeView alloc] initWithFrame:self.view.bounds];
    }
    return _homeView;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
