//
//  InputViewController.h
//  tuto
//
//  Created by Sharon Colin on 27/11/2016.
//  Copyright © 2016 Sharon Colin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InputViewController : UIViewController <UITextFieldDelegate> {
    
    IBOutlet UITextField *input1;
    IBOutlet UITextField *input2;
    IBOutlet UILabel *labelAffichage;
    
}

- (IBAction)actionValidation:(id)sender;

@end
