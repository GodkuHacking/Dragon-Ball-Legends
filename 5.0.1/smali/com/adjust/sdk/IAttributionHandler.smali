.class public interface abstract Lcom/adjust/sdk/IAttributionHandler;
.super Ljava/lang/Object;
.source "IAttributionHandler.java"


# virtual methods
.method public abstract checkSdkClickResponse(Lcom/adjust/sdk/SdkClickResponseData;)V
.end method

.method public abstract checkSessionResponse(Lcom/adjust/sdk/SessionResponseData;)V
.end method

.method public abstract getAttribution()V
.end method

.method public abstract init(Lcom/adjust/sdk/IActivityHandler;ZLcom/adjust/sdk/network/IActivityPackageSender;)V
.end method

.method public abstract pauseSending()V
.end method

.method public abstract resumeSending()V
.end method

.method public abstract teardown()V
.end method
