.class public interface abstract Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;
.super Ljava/lang/Object;
.source "Utility.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GraphMeRequestWithCacheCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;",
        "",
        "onFailure",
        "",
        "error",
        "Lcom/facebook/FacebookException;",
        "onSuccess",
        "userInfo",
        "Lorg/json/JSONObject;",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/facebook/FacebookException;)V
.end method

.method public abstract onSuccess(Lorg/json/JSONObject;)V
.end method
