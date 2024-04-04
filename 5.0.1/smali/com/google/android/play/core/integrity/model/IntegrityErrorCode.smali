.class public interface abstract annotation Lcom/google/android/play/core/integrity/model/IntegrityErrorCode;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.1.0-beta01"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final API_NOT_AVAILABLE:I = -0x1

.field public static final APP_NOT_INSTALLED:I = -0x5

.field public static final APP_UID_MISMATCH:I = -0x7

.field public static final CANNOT_BIND_TO_SERVICE:I = -0x9

.field public static final CLIENT_TRANSIENT_ERROR:I = -0x11

.field public static final CLOUD_PROJECT_NUMBER_IS_INVALID:I = -0x10

.field public static final GOOGLE_SERVER_UNAVAILABLE:I = -0xc

.field public static final INTERNAL_ERROR:I = -0x64

.field public static final NETWORK_ERROR:I = -0x3

.field public static final NONCE_IS_NOT_BASE64:I = -0xd

.field public static final NONCE_TOO_LONG:I = -0xb

.field public static final NONCE_TOO_SHORT:I = -0xa

.field public static final NO_ERROR:I = 0x0

.field public static final PLAY_SERVICES_NOT_FOUND:I = -0x6

.field public static final PLAY_SERVICES_VERSION_OUTDATED:I = -0xf

.field public static final PLAY_STORE_ACCOUNT_NOT_FOUND:I = -0x4

.field public static final PLAY_STORE_NOT_FOUND:I = -0x2

.field public static final PLAY_STORE_VERSION_OUTDATED:I = -0xe

.field public static final TOO_MANY_REQUESTS:I = -0x8
