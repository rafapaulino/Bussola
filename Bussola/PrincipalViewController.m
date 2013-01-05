//
//  PrincipalViewController.m
//  Bussola
//
//  Created by Rafael Brigagão Paulino on 17/09/12.
//  Copyright (c) 2012 rafapaulino.com. All rights reserved.
//

#import "PrincipalViewController.h"

@interface PrincipalViewController ()
{
    CLLocationManager *gerenciadorLocalizacao;
}

@end

@implementation PrincipalViewController

-(void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading
{
    /*
     
     0 - NORTE
     90 - LESTE
     180 - SUL
     270 - OESTE
    */
    
    //um valor entre 0 e 1
    double angulo = newHeading.magneticHeading / 360;
    
    angulo = -2 * M_PI * angulo;
    
    [UIView animateWithDuration:1 animations:^{
        _agulha.transform = CGAffineTransformMakeRotation(angulo);
    }];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    gerenciadorLocalizacao = [[CLLocationManager alloc] init];
    gerenciadorLocalizacao.delegate = self;
    
    //iniciando as leituras do dispositivo bussola
    //as novas leituras virao por delegate
    [gerenciadorLocalizacao startUpdatingHeading];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation = UIInterfaceOrientationPortrait);
}

@end
