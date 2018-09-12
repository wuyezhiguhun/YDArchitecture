//
//  YDViewController.m
//  YDMVC
//
//  Created by 王允顶 on 2018/9/11.
//  Copyright © 2018年 王允顶. All rights reserved.
//

#import "YDViewController.h"
#import "YDHomeView.h"
#import "YDStore.h"

@interface YDViewController ()

@property (nonatomic, strong) YDHomeView *homeView;

@end

@implementation YDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavigationItem];
    [self addAllChildViews];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleChangeNotification:) name:StoreChangedNotification object:nil];
   
    // Do any additional setup after loading the view.
}

/**
 * 设置导航栏BarButtonItem
 */
- (void)setNavigationItem {
    self.navigationItem.title = @"MVC";
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addBarButtonItemTouch)];
    UIBarButtonItem *organizeItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemOrganize target:self action:@selector(organizeBarButtonItemTouch)];
    UIBarButtonItem *editItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(editBarButtonItemTouch:)];
//    UIBarButtonItem *doneItem = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStyleDone target:self action:@selector(editBarButtonItemTouch)];
    self.navigationItem.rightBarButtonItems = @[addItem, organizeItem];
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftButton setTitle:@"Edit" forState:UIControlStateNormal];
    [leftButton setTitle:@"Done" forState:UIControlStateSelected];
    [leftButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    leftButton.titleLabel.font = [UIFont systemFontOfSize:15];
    [leftButton addTarget:self action:@selector(leftButtonTouch:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftItemsSupplementBackButton = YES;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
}
/*
 * 添加所有的View
 **/
- (void)addAllChildViews {
    [self.view addSubview:self.homeView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -- 通知
- (void)handleChangeNotification:(NSNotification *)notification {
    
}
#pragma mark -- 导航栏上按钮点击事件
- (void)addBarButtonItemTouch {
    
}
- (void)organizeBarButtonItemTouch {
    
}
- (void)editBarButtonItemTouch:(UIBarButtonItem *)barButtonItem {
    barButtonItem.style = UIBarButtonSystemItemDone;
}
- (void)leftButtonTouch:(UIButton *)button {
    button.selected = !button.selected;
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
