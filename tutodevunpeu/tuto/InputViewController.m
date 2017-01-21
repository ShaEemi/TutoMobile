//
//  InputViewController.m
//  tuto
//
//  Created by Sharon Colin on 27/11/2016.
//  Copyright © 2016 Sharon Colin. All rights reserved.
//

#import "InputViewController.h"

@interface InputViewController ()

@end

@implementation InputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"text Field";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionValidation:(id)sender {
    
    labelAffichage.text = [input1 text];
}
// fonction lorsqu on appui sur la touche return lorsqu on est dans un input
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    if (textField == input1) {
        [input2 becomeFirstResponder];
    } else if (textField == input2){
        [self actionValidation:nil];
    } else {
        NSLog(@"Erreur");
    }
    
    return YES;
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
