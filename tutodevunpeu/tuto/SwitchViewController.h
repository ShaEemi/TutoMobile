//
//  SwitchViewController.h
//  tuto
//
//  Created by Sharon Colin on 26/11/2016.
//  Copyright © 2016 Sharon Colin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwitchViewController : UIViewController {
    IBOutlet UISwitch *switchtest;
    IBOutlet UISwitch *switchtest2;
    IBOutlet UILabel *label;
}

-(IBAction)switchaction:(id)sender;
-(IBAction)switchaction2:(id)sender;

@end
