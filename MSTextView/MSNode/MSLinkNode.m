//
//  MSLinkNode.m
//  UITextViewLinkOptions
//
//  Created by Mark Sands on 11/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MSLinkNode.h"

@implementation MSLinkNode

@synthesize URL = _URL;

- (id) initWithURL:(NSURL*)url
{
  if ( (self = [self initWithURL:url next:nil]) ){
  }
  
  return self;
}

- (id) initWithURL:(NSURL*)url next:(MSNode*)nextNode
{
  if ( (self = [super init]) ){
    self.URL = url;
    self.child = nextNode;
  }
  
  return self;
}

- (NSString*)description {
  return [NSString stringWithFormat:@"%@",self.URL];
}

- (void) dealloc
{
  [_URL release];
  [super dealloc];
}

@end