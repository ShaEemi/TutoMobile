//
//  YoutubeViewController.m
//  tuto
//
//  Created by Sharon Colin on 26/11/2016.
//  Copyright © 2016 Sharon Colin. All rights reserved.
//

#import "YoutubeViewController.h"

@interface YoutubeViewController ()

@end

@implementation YoutubeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    playeryoutube.scrollView.scrollEnabled = NO;
    playeryoutube.scrollView.bounces = NO;
    
    idvideo = @"Q1DvVzKXktY";
    [playeryoutube loadHTMLString:[NSString stringWithFormat:@"<iframe width=\"309\" height=\"165\" src=\"https://www.youtube.com/embed/%@\" frameborder=\"0\" allowfullscreen></iframe>", idvideo] baseURL:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
