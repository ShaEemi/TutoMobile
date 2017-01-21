//
//  DetailTableViewController.h
//  tuto
//
//  Created by Sharon Colin on 27/11/2016.
//  Copyright © 2016 Sharon Colin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailTableViewController : UIViewController {
    
    IBOutlet UILabel *titredetail;
    IBOutlet UILabel *describedetail;
    IBOutlet UIImageView *imagedetail;

}

@property (strong, nonatomic) NSArray *detailTable;

@end
