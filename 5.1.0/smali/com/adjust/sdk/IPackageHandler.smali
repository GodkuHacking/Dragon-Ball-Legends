.class public interface abstract Lcom/adjust/sdk/IPackageHandler;
.super Ljava/lang/Object;
.source "IPackageHandler.java"


# virtual methods
.method public abstract addPackage(Lcom/adjust/sdk/ActivityPackage;)V
.end method

.method public abstract flush()V
.end method

.method public abstract init(Lcom/adjust/sdk/IActivityHandler;Landroid/content/Context;ZLcom/adjust/sdk/network/IActivityPackageSender;)V
.end method

.method public abstract pauseSending()V
.end method

.method public abstract resumeSending()V
.end method

.method public abstract sendFirstPackage()V
.end method

.method public abstract teardown()V
.end method

.method public abstract updatePackages(Lcom/adjust/sdk/SessionParameters;)V
.end method
