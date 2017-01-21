//
//  ViewController.m
//  tuto
//
//  Created by Sharon Colin on 26/11/2016.
//  Copyright © 2016 Sharon Colin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
// code qui permet de chercher le nom de ma police
//    NSArray *familyNames = [UIFont familyNames];
//    for( NSString *familyName in familyNames ){
//        printf( "Famille: %s \n", [familyName UTF8String] );
//        NSArray *fontNames = [UIFont fontNamesForFamilyName:familyName];
//        for( NSString *fontName in fontNames ){
//            printf( "\tNom de la Police: %s \n", [fontName UTF8String] );
//        }
//    }
    
//nom de ma police : PokemonHollowNormal
    police.font = [UIFont fontWithName:@"PokemonHollowNormal" size:30];
    police.text = @"Hello World !";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
