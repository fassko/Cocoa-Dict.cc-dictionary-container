//
//  AppDelegate.m
//  Dict
//
//  Created by Kristaps Grinbergs on 12.9.6.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize webView;

- (void)dealloc
{
    [super dealloc];
}
	
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
  // Insert code here to initialize your application
}

- (void)awakeFromNib {
  
  // appliction url
  NSURL*url=[NSURL URLWithString:@"http:/www.dict.cc"];
  
  // open application url
  NSURLRequest*request=[NSURLRequest requestWithURL:url];
  
  // show it in web view
  [[webView mainFrame] loadRequest:request];
}

- (IBAction)translate:(id)sender {
  [self translateText];
}

- (void) translateText {
  // appliction url
  NSURL*url=[NSURL URLWithString:[NSString stringWithFormat:@"http://www.dict.cc/?s=%@",textField.stringValue]];
  
  // open application url
  NSURLRequest*request=[NSURLRequest requestWithURL:url];
  
  // show it in web view
  [[webView mainFrame] loadRequest:request];
}

- (BOOL)control:(NSControl *)control textView:(NSTextView *)fieldEditor doCommandBySelector:(SEL)commandSelector {           
  BOOL retval = NO;
  if (commandSelector == @selector(insertNewline:)) {
    retval = YES; // causes Apple to NOT fire the default enter action
    [self translateText]; 
  }
  return retval;  
}

@end
