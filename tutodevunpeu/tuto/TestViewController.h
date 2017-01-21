//
//  TestViewController.h
//  tuto
//
//  Created by Sharon Colin on 26/11/2016.
//  Copyright © 2016 Sharon Colin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestViewController : UIViewController {
    
    IBOutlet UIButton *monbouton; // mon bouton est lier en appuyant sur touch up inside (fait laction lorsqu on relache le bouton) mais pour les jeux faire un touch up outside qui permet  ed lancé l action des qu on a appuyer
    IBOutlet UILabel *monlabel;
    
    
}

-(IBAction)testaction:(id)sender;

@end
