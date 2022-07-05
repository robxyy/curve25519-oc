//
//  AppDelegate.m
//  Samples
//
//  Created by RobX on 2022/7/5.
//

#import "AppDelegate.h"
#import "X25519.h"
#import "KeyPair.h"
#import "Ed25519.h"
#import "Random.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSData *data = [Random nextNsDataWithSize:1000];
    KeyPair *keyPair = X25519.generateKeyPair;
    NSLog(@"0 %@", [[NSData dataWithBytes:keyPair.privateKey.bytes length:keyPair.privateKey.length] base64EncodedStringWithOptions:0]);
    NSLog(@"1 %@", [[NSData dataWithBytes:keyPair.publicKey.bytes length:keyPair.publicKey.length] base64EncodedStringWithOptions:0]);

    KeyPair *edKeyPair = Ed25519.generateKeyPair;
    NSLog(@"2 %@", [[NSData dataWithBytes:edKeyPair.publicKey.bytes length:edKeyPair.publicKey.length] base64EncodedStringWithOptions:0]);

    NSData *nsSignature = [Ed25519 signWithPrivateKey:edKeyPair.privateKey data:data];
    NSLog(@"3 %@", [[NSData dataWithBytes:nsSignature.bytes length:nsSignature.length] base64EncodedStringWithOptions:0]);
    NSLog(@"4 %d", [Ed25519 verifyWithSignature:nsSignature publicKey:edKeyPair.publicKey data:data]);
    
    nsSignature = [Ed25519 signWithKeyPair:edKeyPair data:data];
    NSLog(@"5 %@", [[NSData dataWithBytes:nsSignature.bytes length:nsSignature.length] base64EncodedStringWithOptions:0]);
    NSLog(@"6 %d", [Ed25519 verifyWithSignature:nsSignature publicKey:edKeyPair.publicKey data:data]);
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
