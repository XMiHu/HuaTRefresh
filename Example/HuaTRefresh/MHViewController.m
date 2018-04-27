//
//  MHViewController.m
//  HuaTRefresh
//
//  Created by XMiHu on 04/24/2018.
//  Copyright (c) 2018 XMiHu. All rights reserved.
//

#import "MHViewController.h"
#import "UIScrollView+FCXRefresh.h"
#import "FCXRefreshHeaderView.h"
#import "FCXRefreshFooterView.h"

@interface MHViewController ()

@property(nonatomic,strong)UITableView * tableView;

@end

@implementation MHViewController

{
    FCXRefreshHeaderView * head;
    FCXRefreshFooterView * footer;
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:(UITableViewStyleGrouped)];
    [self.view addSubview:self.tableView];
    
    head = [self.tableView addHeaderWithRefreshHandler:^(FCXRefreshBaseView *refreshView) {
        NSLog(@"dsadsd");
    }];
    
    footer = [self.tableView addFooterWithRefreshHandler:^(FCXRefreshBaseView *refreshView) {
        NSLog(@"dsadsdd");
        
    }];
}

@end










