//
//  SongViewController.m
//  tuto
//
//  Created by Sharon Colin on 26/11/2016.
//  Copyright © 2016 Sharon Colin. All rights reserved.
//

#import "SongViewController.h"

@interface SongViewController ()

@end

@implementation SongViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURL *fichier1 = [ NSURL fileURLWithPath: [[ NSBundle mainBundle] pathForResource:@"musique1" ofType:@"mp3"]];
    NSURL *fichier2 = [ NSURL fileURLWithPath: [[ NSBundle mainBundle] pathForResource:@"musique2" ofType:@"mp3"]];
    
    monSon1 = [[AVAudioPlayer alloc] initWithContentsOfURL: fichier1 error:nil];
    monSon2 = [[AVAudioPlayer alloc] initWithContentsOfURL: fichier2 error:nil];
}

- (IBAction)clic1action:(id)sender {
    
    if ((monSon1.isPlaying == false)) {
        [monSon1 play];
        [monSon2 pause];
    } else {
        [monSon1 pause];
    }
}

- (IBAction)clic2action:(id)sender{
    if (monSon2.isPlaying == false) {
        [monSon2 play];
        [monSon1 pause];
    } else {
        [monSon2 pause];
    }
    
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
