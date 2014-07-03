//
//  OralDetailViewController.m
//  WeipinIOS
//
//  Created by haicuan139 on 14-7-1.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import "OralDetailViewController.h"
@interface OralDetailViewController ()

@end

@implementation OralDetailViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
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

- (void)dealloc {
    [_toudiButton release];
    [super dealloc];
}
- (IBAction)toudiButtonClick:(id)sender {

    
    ASIHTTPRequest *request = [self getHttpRequest:@"http://www.baidu.com"];
    
    [request startAsynchronous];
}
-(void)requestFinished:(ASIHTTPRequest *)request{
    [[UIApplication sharedApplication ] setStatusBarHidden:YES];
    NSString *responseString = [request responseString];
    NSLog(@"%@",responseString);

}

-(void)requestStarted:(ASIHTTPRequest *)request
{
    [[UIApplication sharedApplication ] setNetworkActivityIndicatorVisible:YES];
}
-(void)requestFailed:(ASIHTTPRequest *)request
{
    [[UIApplication sharedApplication ] setStatusBarHidden:YES];
    [self showMessageDialog:@"提示" message:@"网络连接错误"];
}
@end
