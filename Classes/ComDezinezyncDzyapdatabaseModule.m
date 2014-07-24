/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "ComDezinezyncDzyapdatabaseModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

#import "DZYAPDatabase.h"

@implementation ComDezinezyncDzyapdatabaseModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"87d07c06-4af6-46ba-bee3-814de01163a5";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"com.dezinezync.dzyapdatabase";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];
	
	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably
	
	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Cleanup 


#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Listener Notifications

-(void)_listenerAdded:(NSString *)type count:(int)count
{
	if (count == 1 && [type isEqualToString:@"my_event"])
	{
		// the first (of potentially many) listener is being added 
		// for event named 'my_event'
	}
}

-(void)_listenerRemoved:(NSString *)type count:(int)count
{
	if (count == 0 && [type isEqualToString:@"my_event"])
	{
		// the last listener called for event named 'my_event' has
		// been removed, we can optionally clean up any resources
		// since no body is listening at this point for that event
	}
}

#pragma Public APIs

- (void)setPassphrase:(id)args
{
    
    [DZYAPDatabase setEncryptionKey:args];
    
}

- (void)set:(id)args
{
    
    NSString *key;
    id value;
    KrollCallback *callback;
    
    ENSURE_ARRAY(args);
    ENSURE_ARG_AT_INDEX(key, args, 0, NSString);
    
    value = [args objectAtIndex:1];
    callback = [args count] > 2 ? [args objectAtIndex:2] : nil;
    
    if(key && value)
    {
        [DZYAPDatabase set:value key:key];
        if(callback)
        {
            [callback call:@[@{@"success":@(YES)}] thisObject:nil];
        }
    }
    else
    {
        if(callback)
        {
            [callback call:@[@{@"success":@(NO)}] thisObject:nil];
        }
    }
    
}

- (void)setNX:(id)args
{
    NSString *key;
    id value;
    KrollCallback *callback;
    
    ENSURE_ARRAY(args);
    ENSURE_ARG_AT_INDEX(key, args, 0, NSString);
    
    value = [args objectAtIndex:1];
    callback = [args count] > 2 ? [args objectAtIndex:2] : nil;
    
    if(key && value)
    {
        [DZYAPDatabase setNX:value key:key];
        if(callback)
        {
            [callback call:@[@{@"success":@(YES)}] thisObject:nil];
        }
    }
    else
    {
        if(callback)
        {
            [callback call:@[@{@"success":@(NO)}] thisObject:nil];
        }
    }
}

- (void)setInCollection:(id)args
{
    
    NSString *key, *collection;
    id value;
    KrollCallback *callback;
    
    ENSURE_ARRAY(args);
    
    ENSURE_ARG_AT_INDEX(key, args, 0, NSString);
    ENSURE_ARG_AT_INDEX(collection, args, 1, NSString);
    
    value = [args objectAtIndex:2];
    callback = [args count] > 3 ? [args objectAtIndex:3] : nil;
    
    if(key && value)
    {
        
        if(collection)
        {
            [DZYAPDatabase set:value key:key collection:collection];
        }
        else
        {
            [DZYAPDatabase set:value key:key];
        }
        
        if(callback)
        {
            [callback call:@[@{@"success":@(YES)}] thisObject:nil];
        }
        
    }
    else
    {
        if(callback)
        {
            [callback call:@[@{@"success":@(NO)}] thisObject:nil];
        }
    }

}

- (void)setNXInCollection:(id)args
{
    NSString *key, *collection;
    id value;
    KrollCallback *callback;
    
    ENSURE_ARRAY(args);
    
    ENSURE_ARG_AT_INDEX(key, args, 0, NSString);
    ENSURE_ARG_AT_INDEX(collection, args, 1, NSString);
    
    value = [args objectAtIndex:2];
    callback = [args count] > 3 ? [args objectAtIndex:3] : nil;
    
    if(key && value)
    {
        
        if(collection)
        {
            [DZYAPDatabase setNX:value key:key collection:collection];
        }
        else
        {
            [DZYAPDatabase setNX:value key:key];
        }
        
        if(callback)
        {
            [callback call:@[@{@"success":@(YES)}] thisObject:nil];
        }
        
    }
    else
    {
        if(callback)
        {
            [callback call:@[@{@"success":@(NO)}] thisObject:nil];
        }
    }
    
}

- (void)setSecure:(id)args
{
    
    NSString *key;
    id value;
    KrollCallback *callback;
    
    ENSURE_ARRAY(args);
    ENSURE_ARG_AT_INDEX(key, args, 0, NSString);
    
    value = [args objectAtIndex:1];
    callback = [args count] > 2 ? [args objectAtIndex:2] : nil;
    
    if(key && value)
    {
        [DZYAPDatabase setSecure:value key:key];
        if(callback)
        {
            [callback call:@[@{@"success":@(YES)}] thisObject:nil];
        }
    }
    else
    {
        if(callback)
        {
            [callback call:@[@{@"success":@(NO)}] thisObject:nil];
        }
    }
    
}

- (void)setSecureInCollection:(id)args
{
    NSString *key, *collection;
    id value;
    KrollCallback *callback;
    
    ENSURE_ARRAY(args);
    
    ENSURE_ARG_AT_INDEX(key, args, 0, NSString);
    ENSURE_ARG_AT_INDEX(collection, args, 1, NSString);
    
    value = [args objectAtIndex:2];
    callback = [args count] > 3 ? [args objectAtIndex:3] : nil;
    
    if(key && value)
    {
        
        if(collection)
        {
            [DZYAPDatabase setSecure:value key:key collection:collection];
        }
        else
        {
            [DZYAPDatabase setSecure:value key:key];
        }
        
        if(callback)
        {
            [callback call:@[@{@"success":@(YES)}] thisObject:nil];
        }
        
    }
    else
    {
        if(callback)
        {
            [callback call:@[@{@"success":@(NO)}] thisObject:nil];
        }
    }
    
}

- (void)getValue:(id)args
{
    NSString *key;
    KrollCallback *callback;
    
    ENSURE_ARRAY(args);
    ENSURE_ARG_AT_INDEX(key, args, 0, NSString);
    ENSURE_ARG_AT_INDEX(callback, args, 1, KrollCallback);
    
//    Process only if we can send back the value
    if(key && callback)
    {
        
        [DZYAPDatabase get:key completion:^(BOOL finished, id obj) {
           
            if(finished)
            {
                [callback call:@[@{@"obj":obj,@"success":@(YES)}] thisObject:nil];
            }
            else
            {
                [callback call:@[@{@"success":@(NO)}] thisObject:nil];
            }
            
        }];
        
    }
    else
    {
        if(callback)
        {
            [callback call:@[@{@"success":@(NO)}] thisObject:nil];
        }
    }
    
}

- (void)getFromCollection:(id)args
{
    NSString *key;
    NSString *collection;
    KrollCallback *callback;
    
    ENSURE_ARRAY(args);
    ENSURE_ARG_AT_INDEX(key, args, 0, NSString);
    ENSURE_ARG_AT_INDEX(collection, args, 1, NSString);
    ENSURE_ARG_AT_INDEX(callback, args, 2, KrollCallback);
    
//    Process only if we can send back the value
    if(key && callback)
    {
        
        [DZYAPDatabase get:key fromCollection:collection completion:^(BOOL finished, id obj) {
            
            if(finished)
            {
                [callback call:@[@{@"obj":obj,@"success":@(YES)}] thisObject:nil];
            }
            else
            {
                [callback call:@[@{@"success":@(NO)}] thisObject:nil];
            }
            
        }];
        
    }
    else
    {
        if(callback)
        {
            [callback call:@[@{@"success":@(NO)}] thisObject:nil];
        }
    }
    
}

- (void)getMulti:(id)args
{
    NSArray *keys;
    NSString *collection;
    KrollCallback *callback;
    
    ENSURE_ARRAY(args);
    ENSURE_ARG_AT_INDEX(keys, args, 0, NSArray);
    ENSURE_ARG_AT_INDEX(collection, args, 1, NSString);
    ENSURE_ARG_AT_INDEX(callback, args, 2, KrollCallback);
    
    if(keys && callback)
    {
        
        [DZYAPDatabase getMutli:keys fromCollection:collection completion:^(BOOL finished, NSArray *batch) {
           
            if(finished)
            {
                [callback call:@[@{@"obj":batch,@"success":@(YES)}] thisObject:nil];
            }
            else
            {
                [callback call:@[@{@"success":@(NO)}] thisObject:nil];
            }
            
        }];
        
    }
    else
    {
        if(callback)
        {
            [callback call:@[@{@"success":@(NO)}] thisObject:nil];
        }
    }
    
}

- (void)getAllFromCollection:(id)args
{
    NSString *collection;
    KrollCallback *callback;
    
    ENSURE_ARRAY(args);
    ENSURE_ARG_AT_INDEX(collection, args, 0, NSString);
    ENSURE_ARG_AT_INDEX(callback, args, 1, KrollCallback);
    
    if(collection && callback)
    {
        
        [DZYAPDatabase getAllFromCollection:collection complete:^(BOOL finished, NSArray *batch) {
           
            if(finished)
            {
                [callback call:@[@{@"obj":batch,@"success":@(YES)}] thisObject:nil];
            }
            else
            {
                [callback call:@[@{@"success":@(NO)}] thisObject:nil];
            }
            
        }];
        
    }
    else
    {
        if(callback)
        {
            [callback call:@[@{@"success":@(NO)}] thisObject:nil];
        }
    }
    
}

- (void)del:(id)args
{
    
    NSString *key;
    KrollCallback *callback;
    
    ENSURE_ARRAY(args);
    ENSURE_ARG_AT_INDEX(key, args, 0, NSString);
    ENSURE_ARG_AT_INDEX(callback, args, 1, KrollCallback);
    
//    Process only if we can send back the value
    if(key)
    {
        
        [DZYAPDatabase del:key];
        if(callback)
        {
            [callback call:@[@{@"success":@(YES)}] thisObject:nil];
        }
        
    }
    else
    {
        if(callback)
        {
            [callback call:@[@{@"success":@(NO)}] thisObject:nil];
        }
    }
    
}

- (void)delFromCollection:(id)args
{
    
    NSString *key, *collection;
    KrollCallback *callback;
    
    ENSURE_ARRAY(args);
    ENSURE_ARG_AT_INDEX(key, args, 0, NSString);
    ENSURE_ARG_AT_INDEX(collection, args, 1, NSString);
    ENSURE_ARG_AT_INDEX(callback, args, 2, KrollCallback);
    
    //    Process only if we can send back the value
    if(key)
    {
        
        if(collection)
        {
            [DZYAPDatabase del:key fromCollection:collection];
        }
        else
        {
            [DZYAPDatabase del:key];
        }
        if(callback)
        {
            [callback call:@[@{@"success":@(YES)}] thisObject:nil];
        }
        
    }
    else
    {
        if(callback)
        {
            [callback call:@[@{@"success":@(NO)}] thisObject:nil];
        }
    }
    
}

- (void)removeAllFromCollection:(id)args
{
    
    NSString *collection;
    KrollCallback *callback;
    
    ENSURE_ARRAY(args);
    ENSURE_ARG_AT_INDEX(collection, args, 0, NSString);
    ENSURE_ARG_AT_INDEX(callback, args, 1, KrollCallback);
    
    if(collection && callback)
    {
        
        [DZYAPDatabase removeAllObjectsFromCollection:collection];
        if(callback)
        {
            [callback call:@[@{@"success":@(YES)}] thisObject:nil];
        }
        
    }
    else
    {
        if(callback)
        {
            [callback call:@[@{@"success":@(NO)}] thisObject:nil];
        }
    }
    
}

- (void)removeAllFromAllCollections:(id)args
{
    [DZYAPDatabase removeAllObjectsFromAllCollections];
}

@end
