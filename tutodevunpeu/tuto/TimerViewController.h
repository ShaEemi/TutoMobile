//
//  TimerViewController.h
//  tuto
//
//  Created by Sharon Colin on 27/11/2016.
//  Copyright © 2016 Sharon Colin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimerViewController : UIViewController {
    
    IBOutlet UILabel *label;
    IBOutlet UIButton *start;
    IBOutlet UIButton *pause;
    NSTimer *timer;
    int nombre;
}

- (IBAction)startaction:(id)sender;
- (IBAction)pauseaction:(id)sender;

@end
 