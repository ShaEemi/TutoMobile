//
//  TimerViewController.m
//  tuto
//
//  Created by Sharon Colin on 27/11/2016.
//  Copyright © 2016 Sharon Colin. All rights reserved.
//

#import "TimerViewController.h"

@interface TimerViewController ()

@end

@implementation TimerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    
}



- (IBAction)startaction:(id)sender {
    //    ici on peut commencer a un autre nombre que 0
    nombre = 0;
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(incrementation) userInfo:nil repeats:YES];
}

- (IBAction)pauseaction:(id)sender {
//    ici on peut commencer a un autre nombre que 0
    nombre = 0;
    
    [timer invalidate];
}

- (void)incrementation {
//    pour aller en negative on ecrira nombre--;
    nombre++;
    // pour afficher un nombre entier il faut faire la fonction ci dessous
    label.text = [ NSString stringWithFormat:@"%i", nombre];
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
