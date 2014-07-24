/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "TiModule.h"

@interface ComDezinezyncDzyapdatabaseModule : TiModule 

- (void)setPassphrase:(id)args;

#pragma mark - SET
- (void)set:(id)args;
- (void)setNX:(id)args;
- (void)setInCollection:(id)args;
- (void)setNXInCollection:(id)args;

- (void)setSecure:(id)args;
- (void)setSecureInCollection:(id)args;

#pragma mark - GET
- (void)getValue:(id)args;
- (void)getFromCollection:(id)args;
- (void)getMulti:(id)args;
- (void)getAllFromCollection:(id)args;

#pragma mark - DEL
- (void)del:(id)args;
- (void)delFromCollection:(id)args;

#pragma mark - COL
- (void)removeAllFromCollection:(id)args;
- (void)removeAllFromAllCollections:(id)args;

@end
