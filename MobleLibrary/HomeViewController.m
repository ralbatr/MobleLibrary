//
//  HomeViewController.m
//  MobleLibrary
//
//  Created by Ralbatr on 14-3-10.
//  Copyright (c) 2014年 Ralbatr. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

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
    //set backgroundColor
    self.view.backgroundColor = [UIColor grayColor];
    [self drawButton];
    
}

#pragma mark --draw icon button
- (void)drawButton
{
//    CGRect frame = CGRectMake(35, 130, 80, 80);
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//    [button setImage:[UIImage imageNamed:@"search.png"] forState:UIControlStateNormal];
//    button.frame = frame;
//    [self.view addSubview:button];
    NSArray *iconArray = [NSArray arrayWithObjects:@"search.png",@"borrow.png",@"renew.png",@"attention.png",@"notice",@"collect.png",@"newBooks.png",@"comment.png",@"set.png",@"aboutUs", nil];
    NSArray *discArray = [NSArray arrayWithObjects:@"快速查询",@"快速借阅", @"已借续借",@"通告通知",@"我的关注",@"我的收藏",@"新书通报",@"我的评论",@"系统设置",@"关于我们",nil];
    for (int i = 0; i < 10; i++) {
        CGRect frame = CGRectMake((35*(i%3+1)+60*(i%3)), 85*(i/3)+65, 60, 60);
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setImage:[UIImage imageNamed:[iconArray objectAtIndex:i]] forState:UIControlStateNormal];
        button.frame = frame;
        [self.view addSubview:button];
        CGRect labelFrame = CGRectMake(frame.origin.x+10, frame.origin.y+40, frame.size.width, frame.size.height);
        UILabel *label = [[UILabel alloc] initWithFrame:labelFrame];
        label.font = [UIFont systemFontOfSize:10];
        label.text = discArray[i];
        [self.view addSubview:label];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
