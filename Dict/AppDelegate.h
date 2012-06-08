//
//  AppDelegate.h
//  Dict
//
//  Created by Kristaps Grinbergs on 12.9.6.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSTextFieldDelegate> {
  IBOutlet WebView *webView;
  IBOutlet NSTextField *textField;
}

- (IBAction) translate:(id)sender;
- (void) translateText;

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic, retain) IBOutlet WebView *webView;

@end
