// Copyright 2023, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
// Autogenerated from Pigeon (v9.0.6), do not edit directly.
// See also: https://pub.dev/packages/pigeon

package io.flutter.plugins.firebase.core;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/** Generated class from Pigeon. */
@SuppressWarnings({"unused", "unchecked", "CodeBlock2Expr", "RedundantSuppression"})
public class GeneratedAndroidFirebaseCore {
  @NonNull
  private static ArrayList<Object> wrapError(@NonNull Throwable exception) {
    ArrayList<Object> errorList = new ArrayList<Object>(3);
    errorList.add(exception.toString());
    errorList.add(exception.getClass().getSimpleName());
    errorList.add(
        "Cause: " + exception.getCause() + ", Stacktrace: " + Log.getStackTraceString(exception));
    return errorList;
  }

  /** Generated class from Pigeon that represents data sent in messages. */
  public static final class PigeonFirebaseOptions {
    private @NonNull String apiKey;

    public @NonNull String getApiKey() {
      return apiKey;
    }

    public void setApiKey(@NonNull String setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"apiKey\" is null.");
      }
      this.apiKey = setterArg;
    }

    private @NonNull String appId;

    public @NonNull String getAppId() {
      return appId;
    }

    public void setAppId(@NonNull String setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"appId\" is null.");
      }
      this.appId = setterArg;
    }

    private @NonNull String messagingSenderId;

    public @NonNull String getMessagingSenderId() {
      return messagingSenderId;
    }

    public void setMessagingSenderId(@NonNull String setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"messagingSenderId\" is null.");
      }
      this.messagingSenderId = setterArg;
    }

    private @NonNull String projectId;

    public @NonNull String getProjectId() {
      return projectId;
    }

    public void setProjectId(@NonNull String setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"projectId\" is null.");
      }
      this.projectId = setterArg;
    }

    private @Nullable String authDomain;

    public @Nullable String getAuthDomain() {
      return authDomain;
    }

    public void setAuthDomain(@Nullable String setterArg) {
      this.authDomain = setterArg;
    }

    private @Nullable String databaseURL;

    public @Nullable String getDatabaseURL() {
      return databaseURL;
    }

    public void setDatabaseURL(@Nullable String setterArg) {
      this.databaseURL = setterArg;
    }

    private @Nullable String storageBucket;

    public @Nullable String getStorageBucket() {
      return storageBucket;
    }

    public void setStorageBucket(@Nullable String setterArg) {
      this.storageBucket = setterArg;
    }

    private @Nullable String measurementId;

    public @Nullable String getMeasurementId() {
      return measurementId;
    }

    public void setMeasurementId(@Nullable String setterArg) {
      this.measurementId = setterArg;
    }

    private @Nullable String trackingId;

    public @Nullable String getTrackingId() {
      return trackingId;
    }

    public void setTrackingId(@Nullable String setterArg) {
      this.trackingId = setterArg;
    }

    private @Nullable String deepLinkURLScheme;

    public @Nullable String getDeepLinkURLScheme() {
      return deepLinkURLScheme;
    }

    public void setDeepLinkURLScheme(@Nullable String setterArg) {
      this.deepLinkURLScheme = setterArg;
    }

    private @Nullable String androidClientId;

    public @Nullable String getAndroidClientId() {
      return androidClientId;
    }

    public void setAndroidClientId(@Nullable String setterArg) {
      this.androidClientId = setterArg;
    }

    private @Nullable String iosClientId;

    public @Nullable String getIosClientId() {
      return iosClientId;
    }

    public void setIosClientId(@Nullable String setterArg) {
      this.iosClientId = setterArg;
    }

    private @Nullable String iosBundleId;

    public @Nullable String getIosBundleId() {
      return iosBundleId;
    }

    public void setIosBundleId(@Nullable String setterArg) {
      this.iosBundleId = setterArg;
    }

    private @Nullable String appGroupId;

    public @Nullable String getAppGroupId() {
      return appGroupId;
    }

    public void setAppGroupId(@Nullable String setterArg) {
      this.appGroupId = setterArg;
    }

    /** Constructor is private to enforce null safety; use Builder. */
    private PigeonFirebaseOptions() {}

    public static final class Builder {

      private @Nullable String apiKey;

      public @NonNull Builder setApiKey(@NonNull String setterArg) {
        this.apiKey = setterArg;
        return this;
      }

      private @Nullable String appId;

      public @NonNull Builder setAppId(@NonNull String setterArg) {
        this.appId = setterArg;
        return this;
      }

      private @Nullable String messagingSenderId;

      public @NonNull Builder setMessagingSenderId(@NonNull String setterArg) {
        this.messagingSenderId = setterArg;
        return this;
      }

      private @Nullable String projectId;

      public @NonNull Builder setProjectId(@NonNull String setterArg) {
        this.projectId = setterArg;
        return this;
      }

      private @Nullable String authDomain;

      public @NonNull Builder setAuthDomain(@Nullable String setterArg) {
        this.authDomain = setterArg;
        return this;
      }

      private @Nullable String databaseURL;

      public @NonNull Builder setDatabaseURL(@Nullable String setterArg) {
        this.databaseURL = setterArg;
        return this;
      }

      private @Nullable String storageBucket;

      public @NonNull Builder setStorageBucket(@Nullable String setterArg) {
        this.storageBucket = setterArg;
        return this;
      }

      private @Nullable String measurementId;

      public @NonNull Builder setMeasurementId(@Nullable String setterArg) {
        this.measurementId = setterArg;
        return this;
      }

      private @Nullable String trackingId;

      public @NonNull Builder setTrackingId(@Nullable String setterArg) {
        this.trackingId = setterArg;
        return this;
      }

      private @Nullable String deepLinkURLScheme;

      public @NonNull Builder setDeepLinkURLScheme(@Nullable String setterArg) {
        this.deepLinkURLScheme = setterArg;
        return this;
      }

      private @Nullable String androidClientId;

      public @NonNull Builder setAndroidClientId(@Nullable String setterArg) {
        this.androidClientId = setterArg;
        return this;
      }

      private @Nullable String iosClientId;

      public @NonNull Builder setIosClientId(@Nullable String setterArg) {
        this.iosClientId = setterArg;
        return this;
      }

      private @Nullable String iosBundleId;

      public @NonNull Builder setIosBundleId(@Nullable String setterArg) {
        this.iosBundleId = setterArg;
        return this;
      }

      private @Nullable String appGroupId;

      public @NonNull Builder setAppGroupId(@Nullable String setterArg) {
        this.appGroupId = setterArg;
        return this;
      }

      public @NonNull PigeonFirebaseOptions build() {
        PigeonFirebaseOptions pigeonReturn = new PigeonFirebaseOptions();
        pigeonReturn.setApiKey(apiKey);
        pigeonReturn.setAppId(appId);
        pigeonReturn.setMessagingSenderId(messagingSenderId);
        pigeonReturn.setProjectId(projectId);
        pigeonReturn.setAuthDomain(authDomain);
        pigeonReturn.setDatabaseURL(databaseURL);
        pigeonReturn.setStorageBucket(storageBucket);
        pigeonReturn.setMeasurementId(measurementId);
        pigeonReturn.setTrackingId(trackingId);
        pigeonReturn.setDeepLinkURLScheme(deepLinkURLScheme);
        pigeonReturn.setAndroidClientId(androidClientId);
        pigeonReturn.setIosClientId(iosClientId);
        pigeonReturn.setIosBundleId(iosBundleId);
        pigeonReturn.setAppGroupId(appGroupId);
        return pigeonReturn;
      }
    }

    @NonNull
    ArrayList<Object> toList() {
      ArrayList<Object> toListResult = new ArrayList<Object>(14);
      toListResult.add(apiKey);
      toListResult.add(appId);
      toListResult.add(messagingSenderId);
      toListResult.add(projectId);
      toListResult.add(authDomain);
      toListResult.add(databaseURL);
      toListResult.add(storageBucket);
      toListResult.add(measurementId);
      toListResult.add(trackingId);
      toListResult.add(deepLinkURLScheme);
      toListResult.add(androidClientId);
      toListResult.add(iosClientId);
      toListResult.add(iosBundleId);
      toListResult.add(appGroupId);
      return toListResult;
    }

    static @NonNull PigeonFirebaseOptions fromList(@NonNull ArrayList<Object> list) {
      PigeonFirebaseOptions pigeonResult = new PigeonFirebaseOptions();
      Object apiKey = list.get(0);
      pigeonResult.setApiKey((String) apiKey);
      Object appId = list.get(1);
      pigeonResult.setAppId((String) appId);
      Object messagingSenderId = list.get(2);
      pigeonResult.setMessagingSenderId((String) messagingSenderId);
      Object projectId = list.get(3);
      pigeonResult.setProjectId((String) projectId);
      Object authDomain = list.get(4);
      pigeonResult.setAuthDomain((String) authDomain);
      Object databaseURL = list.get(5);
      pigeonResult.setDatabaseURL((String) databaseURL);
      Object storageBucket = list.get(6);
      pigeonResult.setStorageBucket((String) storageBucket);
      Object measurementId = list.get(7);
      pigeonResult.setMeasurementId((String) measurementId);
      Object trackingId = list.get(8);
      pigeonResult.setTrackingId((String) trackingId);
      Object deepLinkURLScheme = list.get(9);
      pigeonResult.setDeepLinkURLScheme((String) deepLinkURLScheme);
      Object androidClientId = list.get(10);
      pigeonResult.setAndroidClientId((String) androidClientId);
      Object iosClientId = list.get(11);
      pigeonResult.setIosClientId((String) iosClientId);
      Object iosBundleId = list.get(12);
      pigeonResult.setIosBundleId((String) iosBundleId);
      Object appGroupId = list.get(13);
      pigeonResult.setAppGroupId((String) appGroupId);
      return pigeonResult;
    }
  }

  /** Generated class from Pigeon that represents data sent in messages. */
  public static final class PigeonInitializeResponse {
    private @NonNull String name;

    public @NonNull String getName() {
      return name;
    }

    public void setName(@NonNull String setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"name\" is null.");
      }
      this.name = setterArg;
    }

    private @NonNull PigeonFirebaseOptions options;

    public @NonNull PigeonFirebaseOptions getOptions() {
      return options;
    }

    public void setOptions(@NonNull PigeonFirebaseOptions setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"options\" is null.");
      }
      this.options = setterArg;
    }

    private @Nullable Boolean isAutomaticDataCollectionEnabled;

    public @Nullable Boolean getIsAutomaticDataCollectionEnabled() {
      return isAutomaticDataCollectionEnabled;
    }

    public void setIsAutomaticDataCollectionEnabled(@Nullable Boolean setterArg) {
      this.isAutomaticDataCollectionEnabled = setterArg;
    }

    private @NonNull Map<String, Object> pluginConstants;

    public @NonNull Map<String, Object> getPluginConstants() {
      return pluginConstants;
    }

    public void setPluginConstants(@NonNull Map<String, Object> setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"pluginConstants\" is null.");
      }
      this.pluginConstants = setterArg;
    }

    /** Constructor is private to enforce null safety; use Builder. */
    private PigeonInitializeResponse() {}

    public static final class Builder {

      private @Nullable String name;

      public @NonNull Builder setName(@NonNull String setterArg) {
        this.name = setterArg;
        return this;
      }

      private @Nullable PigeonFirebaseOptions options;

      public @NonNull Builder setOptions(@NonNull PigeonFirebaseOptions setterArg) {
        this.options = setterArg;
        return this;
      }

      private @Nullable Boolean isAutomaticDataCollectionEnabled;

      public @NonNull Builder setIsAutomaticDataCollectionEnabled(@Nullable Boolean setterArg) {
        this.isAutomaticDataCollectionEnabled = setterArg;
        return this;
      }

      private @Nullable Map<String, Object> pluginConstants;

      public @NonNull Builder setPluginConstants(@NonNull Map<String, Object> setterArg) {
        this.pluginConstants = setterArg;
        return this;
      }

      public @NonNull PigeonInitializeResponse build() {
        PigeonInitializeResponse pigeonReturn = new PigeonInitializeResponse();
        pigeonReturn.setName(name);
        pigeonReturn.setOptions(options);
        pigeonReturn.setIsAutomaticDataCollectionEnabled(isAutomaticDataCollectionEnabled);
        pigeonReturn.setPluginConstants(pluginConstants);
        return pigeonReturn;
      }
    }

    @NonNull
    ArrayList<Object> toList() {
      ArrayList<Object> toListResult = new ArrayList<Object>(4);
      toListResult.add(name);
      toListResult.add((options == null) ? null : options.toList());
      toListResult.add(isAutomaticDataCollectionEnabled);
      toListResult.add(pluginConstants);
      return toListResult;
    }

    static @NonNull PigeonInitializeResponse fromList(@NonNull ArrayList<Object> list) {
      PigeonInitializeResponse pigeonResult = new PigeonInitializeResponse();
      Object name = list.get(0);
      pigeonResult.setName((String) name);
      Object options = list.get(1);
      pigeonResult.setOptions(
          (options == null) ? null : PigeonFirebaseOptions.fromList((ArrayList<Object>) options));
      Object isAutomaticDataCollectionEnabled = list.get(2);
      pigeonResult.setIsAutomaticDataCollectionEnabled((Boolean) isAutomaticDataCollectionEnabled);
      Object pluginConstants = list.get(3);
      pigeonResult.setPluginConstants((Map<String, Object>) pluginConstants);
      return pigeonResult;
    }
  }

  public interface Result<T> {
    void success(T result);

    void error(Throwable error);
  }

  private static class FirebaseCoreHostApiCodec extends StandardMessageCodec {
    public static final FirebaseCoreHostApiCodec INSTANCE = new FirebaseCoreHostApiCodec();

    private FirebaseCoreHostApiCodec() {}

    @Override
    protected Object readValueOfType(byte type, @NonNull ByteBuffer buffer) {
      switch (type) {
        case (byte) 128:
          return PigeonFirebaseOptions.fromList((ArrayList<Object>) readValue(buffer));
        case (byte) 129:
          return PigeonInitializeResponse.fromList((ArrayList<Object>) readValue(buffer));
        default:
          return super.readValueOfType(type, buffer);
      }
    }

    @Override
    protected void writeValue(@NonNull ByteArrayOutputStream stream, Object value) {
      if (value instanceof PigeonFirebaseOptions) {
        stream.write(128);
        writeValue(stream, ((PigeonFirebaseOptions) value).toList());
      } else if (value instanceof PigeonInitializeResponse) {
        stream.write(129);
        writeValue(stream, ((PigeonInitializeResponse) value).toList());
      } else {
        super.writeValue(stream, value);
      }
    }
  }

  /** Generated interface from Pigeon that represents a handler of messages from Flutter. */
  public interface FirebaseCoreHostApi {

    void initializeApp(
        @NonNull String appName,
        @NonNull PigeonFirebaseOptions initializeAppRequest,
        Result<PigeonInitializeResponse> result);

    void initializeCore(Result<List<PigeonInitializeResponse>> result);

    void optionsFromResource(Result<PigeonFirebaseOptions> result);

    /** The codec used by FirebaseCoreHostApi. */
    static MessageCodec<Object> getCodec() {
      return FirebaseCoreHostApiCodec.INSTANCE;
    }
    /**
     * Sets up an instance of `FirebaseCoreHostApi` to handle messages through the
     * `binaryMessenger`.
     */
    static void setup(BinaryMessenger binaryMessenger, FirebaseCoreHostApi api) {
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger,
                "dev.flutter.pigeon.FirebaseCoreHostApi.initializeApp",
                getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<Object>();
                try {
                  ArrayList<Object> args = (ArrayList<Object>) message;
                  assert args != null;
                  String appNameArg = (String) args.get(0);
                  if (appNameArg == null) {
                    throw new NullPointerException("appNameArg unexpectedly null.");
                  }
                  PigeonFirebaseOptions initializeAppRequestArg =
                      (PigeonFirebaseOptions) args.get(1);
                  if (initializeAppRequestArg == null) {
                    throw new NullPointerException("initializeAppRequestArg unexpectedly null.");
                  }
                  Result<PigeonInitializeResponse> resultCallback =
                      new Result<PigeonInitializeResponse>() {
                        public void success(PigeonInitializeResponse result) {
                          wrapped.add(0, result);
                          reply.reply(wrapped);
                        }

                        public void error(Throwable error) {
                          ArrayList<Object> wrappedError = wrapError(error);
                          reply.reply(wrappedError);
                        }
                      };

                  api.initializeApp(appNameArg, initializeAppRequestArg, resultCallback);
                } catch (Error | RuntimeException exception) {
                  ArrayList<Object> wrappedError = wrapError(exception);
                  reply.reply(wrappedError);
                }
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger,
                "dev.flutter.pigeon.FirebaseCoreHostApi.initializeCore",
                getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<Object>();
                try {
                  Result<List<PigeonInitializeResponse>> resultCallback =
                      new Result<List<PigeonInitializeResponse>>() {
                        public void success(List<PigeonInitializeResponse> result) {
                          wrapped.add(0, result);
                          reply.reply(wrapped);
                        }

                        public void error(Throwable error) {
                          ArrayList<Object> wrappedError = wrapError(error);
                          reply.reply(wrappedError);
                        }
                      };

                  api.initializeCore(resultCallback);
                } catch (Error | RuntimeException exception) {
                  ArrayList<Object> wrappedError = wrapError(exception);
                  reply.reply(wrappedError);
                }
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger,
                "dev.flutter.pigeon.FirebaseCoreHostApi.optionsFromResource",
                getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<Object>();
                try {
                  Result<PigeonFirebaseOptions> resultCallback =
                      new Result<PigeonFirebaseOptions>() {
                        public void success(PigeonFirebaseOptions result) {
                          wrapped.add(0, result);
                          reply.reply(wrapped);
                        }

                        public void error(Throwable error) {
                          ArrayList<Object> wrappedError = wrapError(error);
                          reply.reply(wrappedError);
                        }
                      };

                  api.optionsFromResource(resultCallback);
                } catch (Error | RuntimeException exception) {
                  ArrayList<Object> wrappedError = wrapError(exception);
                  reply.reply(wrappedError);
                }
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
    }
  }
  /** Generated interface from Pigeon that represents a handler of messages from Flutter. */
  public interface FirebaseAppHostApi {

    void setAutomaticDataCollectionEnabled(
        @NonNull String appName, @NonNull Boolean enabled, Result<Void> result);

    void setAutomaticResourceManagementEnabled(
        @NonNull String appName, @NonNull Boolean enabled, Result<Void> result);

    void delete(@NonNull String appName, Result<Void> result);

    /** The codec used by FirebaseAppHostApi. */
    static MessageCodec<Object> getCodec() {
      return new StandardMessageCodec();
    }
    /**
     * Sets up an instance of `FirebaseAppHostApi` to handle messages through the `binaryMessenger`.
     */
    static void setup(BinaryMessenger binaryMessenger, FirebaseAppHostApi api) {
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger,
                "dev.flutter.pigeon.FirebaseAppHostApi.setAutomaticDataCollectionEnabled",
                getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<Object>();
                try {
                  ArrayList<Object> args = (ArrayList<Object>) message;
                  assert args != null;
                  String appNameArg = (String) args.get(0);
                  if (appNameArg == null) {
                    throw new NullPointerException("appNameArg unexpectedly null.");
                  }
                  Boolean enabledArg = (Boolean) args.get(1);
                  if (enabledArg == null) {
                    throw new NullPointerException("enabledArg unexpectedly null.");
                  }
                  Result<Void> resultCallback =
                      new Result<Void>() {
                        public void success(Void result) {
                          wrapped.add(0, null);
                          reply.reply(wrapped);
                        }

                        public void error(Throwable error) {
                          ArrayList<Object> wrappedError = wrapError(error);
                          reply.reply(wrappedError);
                        }
                      };

                  api.setAutomaticDataCollectionEnabled(appNameArg, enabledArg, resultCallback);
                } catch (Error | RuntimeException exception) {
                  ArrayList<Object> wrappedError = wrapError(exception);
                  reply.reply(wrappedError);
                }
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger,
                "dev.flutter.pigeon.FirebaseAppHostApi.setAutomaticResourceManagementEnabled",
                getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<Object>();
                try {
                  ArrayList<Object> args = (ArrayList<Object>) message;
                  assert args != null;
                  String appNameArg = (String) args.get(0);
                  if (appNameArg == null) {
                    throw new NullPointerException("appNameArg unexpectedly null.");
                  }
                  Boolean enabledArg = (Boolean) args.get(1);
                  if (enabledArg == null) {
                    throw new NullPointerException("enabledArg unexpectedly null.");
                  }
                  Result<Void> resultCallback =
                      new Result<Void>() {
                        public void success(Void result) {
                          wrapped.add(0, null);
                          reply.reply(wrapped);
                        }

                        public void error(Throwable error) {
                          ArrayList<Object> wrappedError = wrapError(error);
                          reply.reply(wrappedError);
                        }
                      };

                  api.setAutomaticResourceManagementEnabled(appNameArg, enabledArg, resultCallback);
                } catch (Error | RuntimeException exception) {
                  ArrayList<Object> wrappedError = wrapError(exception);
                  reply.reply(wrappedError);
                }
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger, "dev.flutter.pigeon.FirebaseAppHostApi.delete", getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<Object>();
                try {
                  ArrayList<Object> args = (ArrayList<Object>) message;
                  assert args != null;
                  String appNameArg = (String) args.get(0);
                  if (appNameArg == null) {
                    throw new NullPointerException("appNameArg unexpectedly null.");
                  }
                  Result<Void> resultCallback =
                      new Result<Void>() {
                        public void success(Void result) {
                          wrapped.add(0, null);
                          reply.reply(wrapped);
                        }

                        public void error(Throwable error) {
                          ArrayList<Object> wrappedError = wrapError(error);
                          reply.reply(wrappedError);
                        }
                      };

                  api.delete(appNameArg, resultCallback);
                } catch (Error | RuntimeException exception) {
                  ArrayList<Object> wrappedError = wrapError(exception);
                  reply.reply(wrappedError);
                }
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
    }
  }
}
