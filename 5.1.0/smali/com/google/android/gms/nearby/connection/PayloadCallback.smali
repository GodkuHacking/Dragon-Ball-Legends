.class public abstract Lcom/google/android/gms/nearby/connection/PayloadCallback;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.0.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onPayloadReceived(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;)V
.end method

.method public abstract onPayloadTransferUpdate(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/PayloadTransferUpdate;)V
.end method
