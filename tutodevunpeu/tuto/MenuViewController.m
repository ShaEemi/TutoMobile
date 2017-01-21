//
//  MenuViewController.m
//  
//
//  Created by Sharon Colin on 26/11/2016.
//
//

#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // affiche au chargement de la view
    
    test1 = 3;
    test2 = 3;
    test3 = test1*test2;
    chaine = @"Voici le résultat";
    
    NSLog(@"LE résulat est : %i", test3); // affiche dans la console
    NSLog(@"%@", chaine);
    
    titrelabel.text = chaine;
}

- (void)viewDidAppear:(BOOL)animated {
    // des que la vue apparait tout ce qui est dedant sera charger directement
    // par exemple pour rafraichir des données

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
