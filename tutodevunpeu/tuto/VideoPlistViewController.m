//
//  VideoPlistViewController.m
//  tuto
//
//  Created by Sharon Colin on 27/11/2016.
//  Copyright © 2016 Sharon Colin. All rights reserved.
//

#import "VideoPlistViewController.h"

@interface VideoPlistViewController ()

@end

@implementation VideoPlistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *idVideo = @"Q1DvVzKXktY";
    NSString *titreVideo = @"Titre de la vidéo";
    NSString *descriptionVideo = @"Description de la  vidéo";
    
    // 192.168.1.3
    NSURL *url = [NSURL URLWithString:@"http://192.168.1.3:8888/DEv_Mobile/tuto/data.plist"];
    NSDictionary *tableau = [[NSDictionary alloc] initWithContentsOfURL:url];
    
    titreVideo = [tableau objectForKey:@"Titre"];
    descriptionVideo = [tableau objectForKey:@"Description"];
    idVideo = [tableau objectForKey:@"Url"];
    
    NSArray *composantLienVideo = [idVideo componentsSeparatedByString:@"="];
    NSString *identifiant = [composantLienVideo objectAtIndex:1];
    
    Video.scrollView.scrollEnabled = NO;
    Video.scrollView.bounces = NO;
    [Video loadHTMLString:[NSString stringWithFormat:@"<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/%@\" frameborder=\"0\" allowfullscreen></iframe>", identifiant] baseURL:nil];
    
    titre.text = titreVideo;
    description.text = [descriptionVideo stringByReplacingOccurrencesOfString:@" | " withString: @"\n"];
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
