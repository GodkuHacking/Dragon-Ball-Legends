.class public interface abstract Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
.super Ljava/lang/Object;
.source "OpenGraphJSONUtility.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/OpenGraphJSONUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhotoJSONProcessor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00e6\u0080\u0001\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;",
        "",
        "toJSONObject",
        "Lorg/json/JSONObject;",
        "photo",
        "Lcom/facebook/share/model/SharePhoto;",
        "facebook-common_release"
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
.method public abstract toJSONObject(Lcom/facebook/share/model/SharePhoto;)Lorg/json/JSONObject;
.end method
