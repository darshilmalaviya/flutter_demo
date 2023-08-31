// Copyright 2023, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
// Autogenerated from Pigeon (v9.0.6), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "messages.g.h"
#if TARGET_OS_OSX
#import <FlutterMacOS/FlutterMacOS.h>
#else
#import <Flutter/Flutter.h>
#endif

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSArray *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[
      error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null]
    ];
  }
  return @[ result ?: [NSNull null] ];
}
static id GetNullableObjectAtIndex(NSArray *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

@interface PigeonFirebaseOptions ()
+ (PigeonFirebaseOptions *)fromList:(NSArray *)list;
+ (nullable PigeonFirebaseOptions *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface PigeonInitializeResponse ()
+ (PigeonInitializeResponse *)fromList:(NSArray *)list;
+ (nullable PigeonInitializeResponse *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@implementation PigeonFirebaseOptions
+ (instancetype)makeWithApiKey:(NSString *)apiKey
                         appId:(NSString *)appId
             messagingSenderId:(NSString *)messagingSenderId
                     projectId:(NSString *)projectId
                    authDomain:(nullable NSString *)authDomain
                   databaseURL:(nullable NSString *)databaseURL
                 storageBucket:(nullable NSString *)storageBucket
                 measurementId:(nullable NSString *)measurementId
                    trackingId:(nullable NSString *)trackingId
             deepLinkURLScheme:(nullable NSString *)deepLinkURLScheme
               androidClientId:(nullable NSString *)androidClientId
                   iosClientId:(nullable NSString *)iosClientId
                   iosBundleId:(nullable NSString *)iosBundleId
                    appGroupId:(nullable NSString *)appGroupId {
  PigeonFirebaseOptions *pigeonResult = [[PigeonFirebaseOptions alloc] init];
  pigeonResult.apiKey = apiKey;
  pigeonResult.appId = appId;
  pigeonResult.messagingSenderId = messagingSenderId;
  pigeonResult.projectId = projectId;
  pigeonResult.authDomain = authDomain;
  pigeonResult.databaseURL = databaseURL;
  pigeonResult.storageBucket = storageBucket;
  pigeonResult.measurementId = measurementId;
  pigeonResult.trackingId = trackingId;
  pigeonResult.deepLinkURLScheme = deepLinkURLScheme;
  pigeonResult.androidClientId = androidClientId;
  pigeonResult.iosClientId = iosClientId;
  pigeonResult.iosBundleId = iosBundleId;
  pigeonResult.appGroupId = appGroupId;
  return pigeonResult;
}
+ (PigeonFirebaseOptions *)fromList:(NSArray *)list {
  PigeonFirebaseOptions *pigeonResult = [[PigeonFirebaseOptions alloc] init];
  pigeonResult.apiKey = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.apiKey != nil, @"");
  pigeonResult.appId = GetNullableObjectAtIndex(list, 1);
  NSAssert(pigeonResult.appId != nil, @"");
  pigeonResult.messagingSenderId = GetNullableObjectAtIndex(list, 2);
  NSAssert(pigeonResult.messagingSenderId != nil, @"");
  pigeonResult.projectId = GetNullableObjectAtIndex(list, 3);
  NSAssert(pigeonResult.projectId != nil, @"");
  pigeonResult.authDomain = GetNullableObjectAtIndex(list, 4);
  pigeonResult.databaseURL = GetNullableObjectAtIndex(list, 5);
  pigeonResult.storageBucket = GetNullableObjectAtIndex(list, 6);
  pigeonResult.measurementId = GetNullableObjectAtIndex(list, 7);
  pigeonResult.trackingId = GetNullableObjectAtIndex(list, 8);
  pigeonResult.deepLinkURLScheme = GetNullableObjectAtIndex(list, 9);
  pigeonResult.androidClientId = GetNullableObjectAtIndex(list, 10);
  pigeonResult.iosClientId = GetNullableObjectAtIndex(list, 11);
  pigeonResult.iosBundleId = GetNullableObjectAtIndex(list, 12);
  pigeonResult.appGroupId = GetNullableObjectAtIndex(list, 13);
  return pigeonResult;
}
+ (nullable PigeonFirebaseOptions *)nullableFromList:(NSArray *)list {
  return (list) ? [PigeonFirebaseOptions fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.apiKey ?: [NSNull null]),
    (self.appId ?: [NSNull null]),
    (self.messagingSenderId ?: [NSNull null]),
    (self.projectId ?: [NSNull null]),
    (self.authDomain ?: [NSNull null]),
    (self.databaseURL ?: [NSNull null]),
    (self.storageBucket ?: [NSNull null]),
    (self.measurementId ?: [NSNull null]),
    (self.trackingId ?: [NSNull null]),
    (self.deepLinkURLScheme ?: [NSNull null]),
    (self.androidClientId ?: [NSNull null]),
    (self.iosClientId ?: [NSNull null]),
    (self.iosBundleId ?: [NSNull null]),
    (self.appGroupId ?: [NSNull null]),
  ];
}
@end

@implementation PigeonInitializeResponse
+ (instancetype)makeWithName:(NSString *)name
                             options:(PigeonFirebaseOptions *)options
    isAutomaticDataCollectionEnabled:(nullable NSNumber *)isAutomaticDataCollectionEnabled
                     pluginConstants:(NSDictionary<NSString *, id> *)pluginConstants {
  PigeonInitializeResponse *pigeonResult = [[PigeonInitializeResponse alloc] init];
  pigeonResult.name = name;
  pigeonResult.options = options;
  pigeonResult.isAutomaticDataCollectionEnabled = isAutomaticDataCollectionEnabled;
  pigeonResult.pluginConstants = pluginConstants;
  return pigeonResult;
}
+ (PigeonInitializeResponse *)fromList:(NSArray *)list {
  PigeonInitializeResponse *pigeonResult = [[PigeonInitializeResponse alloc] init];
  pigeonResult.name = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.name != nil, @"");
  pigeonResult.options =
      [PigeonFirebaseOptions nullableFromList:(GetNullableObjectAtIndex(list, 1))];
  NSAssert(pigeonResult.options != nil, @"");
  pigeonResult.isAutomaticDataCollectionEnabled = GetNullableObjectAtIndex(list, 2);
  pigeonResult.pluginConstants = GetNullableObjectAtIndex(list, 3);
  NSAssert(pigeonResult.pluginConstants != nil, @"");
  return pigeonResult;
}
+ (nullable PigeonInitializeResponse *)nullableFromList:(NSArray *)list {
  return (list) ? [PigeonInitializeResponse fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.name ?: [NSNull null]),
    (self.options ? [self.options toList] : [NSNull null]),
    (self.isAutomaticDataCollectionEnabled ?: [NSNull null]),
    (self.pluginConstants ?: [NSNull null]),
  ];
}
@end

@interface FirebaseCoreHostApiCodecReader : FlutterStandardReader
@end
@implementation FirebaseCoreHostApiCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128:
      return [PigeonFirebaseOptions fromList:[self readValue]];
    case 129:
      return [PigeonInitializeResponse fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface FirebaseCoreHostApiCodecWriter : FlutterStandardWriter
@end
@implementation FirebaseCoreHostApiCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[PigeonFirebaseOptions class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PigeonInitializeResponse class]]) {
    [self writeByte:129];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface FirebaseCoreHostApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation FirebaseCoreHostApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[FirebaseCoreHostApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[FirebaseCoreHostApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *FirebaseCoreHostApiGetCodec() {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    FirebaseCoreHostApiCodecReaderWriter *readerWriter =
        [[FirebaseCoreHostApiCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

void FirebaseCoreHostApiSetup(id<FlutterBinaryMessenger> binaryMessenger,
                              NSObject<FirebaseCoreHostApi> *api) {
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:@"dev.flutter.pigeon.FirebaseCoreHostApi.initializeApp"
        binaryMessenger:binaryMessenger
                  codec:FirebaseCoreHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(initializeAppAppName:
                                                  initializeAppRequest:completion:)],
                @"FirebaseCoreHostApi api (%@) doesn't respond to "
                @"@selector(initializeAppAppName:initializeAppRequest:completion:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_appName = GetNullableObjectAtIndex(args, 0);
        PigeonFirebaseOptions *arg_initializeAppRequest = GetNullableObjectAtIndex(args, 1);
        [api initializeAppAppName:arg_appName
             initializeAppRequest:arg_initializeAppRequest
                       completion:^(PigeonInitializeResponse *_Nullable output,
                                    FlutterError *_Nullable error) {
                         callback(wrapResult(output, error));
                       }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:@"dev.flutter.pigeon.FirebaseCoreHostApi.initializeCore"
        binaryMessenger:binaryMessenger
                  codec:FirebaseCoreHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(initializeCoreWithCompletion:)],
                @"FirebaseCoreHostApi api (%@) doesn't respond to "
                @"@selector(initializeCoreWithCompletion:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api initializeCoreWithCompletion:^(NSArray<PigeonInitializeResponse *> *_Nullable output,
                                            FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:@"dev.flutter.pigeon.FirebaseCoreHostApi.optionsFromResource"
        binaryMessenger:binaryMessenger
                  codec:FirebaseCoreHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(optionsFromResourceWithCompletion:)],
                @"FirebaseCoreHostApi api (%@) doesn't respond to "
                @"@selector(optionsFromResourceWithCompletion:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api optionsFromResourceWithCompletion:^(PigeonFirebaseOptions *_Nullable output,
                                                 FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}
NSObject<FlutterMessageCodec> *FirebaseAppHostApiGetCodec() {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  sSharedObject = [FlutterStandardMessageCodec sharedInstance];
  return sSharedObject;
}

void FirebaseAppHostApiSetup(id<FlutterBinaryMessenger> binaryMessenger,
                             NSObject<FirebaseAppHostApi> *api) {
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:@"dev.flutter.pigeon.FirebaseAppHostApi.setAutomaticDataCollectionEnabled"
        binaryMessenger:binaryMessenger
                  codec:FirebaseAppHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector
                     (setAutomaticDataCollectionEnabledAppName:enabled:completion:)],
                @"FirebaseAppHostApi api (%@) doesn't respond to "
                @"@selector(setAutomaticDataCollectionEnabledAppName:enabled:completion:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_appName = GetNullableObjectAtIndex(args, 0);
        NSNumber *arg_enabled = GetNullableObjectAtIndex(args, 1);
        [api setAutomaticDataCollectionEnabledAppName:arg_appName
                                              enabled:arg_enabled
                                           completion:^(FlutterError *_Nullable error) {
                                             callback(wrapResult(nil, error));
                                           }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:
               @"dev.flutter.pigeon.FirebaseAppHostApi.setAutomaticResourceManagementEnabled"
        binaryMessenger:binaryMessenger
                  codec:FirebaseAppHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector
                     (setAutomaticResourceManagementEnabledAppName:enabled:completion:)],
                @"FirebaseAppHostApi api (%@) doesn't respond to "
                @"@selector(setAutomaticResourceManagementEnabledAppName:enabled:completion:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_appName = GetNullableObjectAtIndex(args, 0);
        NSNumber *arg_enabled = GetNullableObjectAtIndex(args, 1);
        [api setAutomaticResourceManagementEnabledAppName:arg_appName
                                                  enabled:arg_enabled
                                               completion:^(FlutterError *_Nullable error) {
                                                 callback(wrapResult(nil, error));
                                               }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:@"dev.flutter.pigeon.FirebaseAppHostApi.delete"
        binaryMessenger:binaryMessenger
                  codec:FirebaseAppHostApiGetCodec()];
    if (api) {
      NSCAssert(
          [api respondsToSelector:@selector(deleteAppName:completion:)],
          @"FirebaseAppHostApi api (%@) doesn't respond to @selector(deleteAppName:completion:)",
          api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_appName = GetNullableObjectAtIndex(args, 0);
        [api deleteAppName:arg_appName
                completion:^(FlutterError *_Nullable error) {
                  callback(wrapResult(nil, error));
                }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}