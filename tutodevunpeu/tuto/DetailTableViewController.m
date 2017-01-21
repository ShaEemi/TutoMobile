//
//  DetailTableViewController.m
//  tuto
//
//  Created by Sharon Colin on 27/11/2016.
//  Copyright © 2016 Sharon Colin. All rights reserved.
//

#import "DetailTableViewController.h"

@interface DetailTableViewController ()

@end

@implementation DetailTableViewController

@synthesize detailTable;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if ([self checkPlist]) {
        // lecture ficher
        NSLog(@"fichier existe");
        [self lecturePlist];
    } else {
        // ecriture
        NSLog(@"fichier en cours d'écriture");
        [self ecriturePlist];
    }
    
    NSString *titre = detailTable[0];
    NSString *describe = detailTable[1];
    NSString *images = detailTable[2];
    NSLog(@"%@", titre);
    NSLog(@"%@", describe);
    NSLog(@"%@", images);
    
    if ([titre isEqualToString:@"Facebook"]) {
        NSLog(@"Bienvenue sur Facebook");
    }
    
    //  cette ligne de code recupere le titre du tableau et l affiche dans l onglet griser au dessus qui correspond au view dans la navigation bar
    self.navigationItem.title = titre;
    
    titredetail.text = titre;
    describedetail.text = describe;
    imagedetail.image = [UIImage imageNamed:images];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)checkPlist {
    
    NSArray *chemin = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *cheminDocument = [chemin objectAtIndex:0];
    NSString *fichierPlist = [cheminDocument stringByAppendingPathComponent:@"data.plist"];
    
    NSFileManager *managerFichier = [NSFileManager defaultManager];
    if ([managerFichier fileExistsAtPath:fichierPlist]) {
        return YES;
    } else {
        return NO;
    }
}

- (void)ecriturePlist {
    NSArray *chemin = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *cheminDocument = [chemin objectAtIndex:0];
    NSString *fichierPlist = [cheminDocument stringByAppendingPathComponent:@"data.plist"];
    
    NSMutableDictionary *donnes = [[NSMutableDictionary alloc] init];
    
    int nombre = 22;
    NSString *string = @"Sharon Colin";
    BOOL test = true;
    
    [donnes setObject:[NSNumber numberWithInt:nombre] forKey:@"mon age"];
    [donnes setObject:[NSString stringWithFormat:@"%@", string] forKey:@"mon nom"];
    [donnes setObject:[NSNumber numberWithBool:test] forKey:@"mon boolean"];
    
    NSLog(@"%@", donnes);
    
    [donnes writeToFile: fichierPlist atomically:YES];

}

- (void)lecturePlist {
    
    NSArray *chemin = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *cheminDocument = [chemin objectAtIndex:0];
    NSString *fichierPlist = [cheminDocument stringByAppendingPathComponent:@"data.plist"];
    
    NSMutableDictionary *donnesLecture = [[NSMutableDictionary alloc] initWithContentsOfFile:fichierPlist];

    int nombre0 = 0;
    NSString *string0;
    BOOL test0;
    
    nombre0 = [[donnesLecture objectForKey:@"mon age"] intValue];
    string0 = [[donnesLecture objectForKey:@"mon nom"] stringByDeletingPathExtension];
    test0 = [[donnesLecture objectForKey:@"ma boolean"] boolValue];
    
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Infos"
    message:[NSString stringWithFormat:@"Nombre : %i\nString : %@\nBool : %d", nombre0, string0, test0] delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alert show];

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
