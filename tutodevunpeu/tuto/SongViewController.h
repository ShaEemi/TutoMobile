//
//  SongViewController.h
//  tuto
//
//  Created by Sharon Colin on 26/11/2016.
//  Copyright © 2016 Sharon Colin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface SongViewController : UIViewController {
    
    AVAudioPlayer *monSon1;
    AVAudioPlayer *monSon2;
    
}

- (IBAction)clic1action:(id)sender;
- (IBAction)clic2action:(id)sender;

@end
