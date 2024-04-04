.class public interface abstract Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;
.super Ljava/lang/Object;
.source "DaemonRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCompleted(Lcom/facebook/GraphResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation
.end method
