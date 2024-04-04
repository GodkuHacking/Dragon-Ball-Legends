.class public interface abstract Lcom/facebook/share/model/ShareModelBuilder;
.super Ljava/lang/Object;
.source "ShareModelBuilder.kt"

# interfaces
.implements Lcom/facebook/share/ShareBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/facebook/share/model/ShareModel;",
        "B::",
        "Lcom/facebook/share/model/ShareModelBuilder<",
        "TM;TB;>;>",
        "Ljava/lang/Object;",
        "Lcom/facebook/share/ShareBuilder<",
        "TM;TB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0014\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u00002\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004J\u0017\u0010\u0005\u001a\u00028\u00012\u0008\u0010\u0006\u001a\u0004\u0018\u00018\u0000H&\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/facebook/share/model/ShareModelBuilder;",
        "M",
        "Lcom/facebook/share/model/ShareModel;",
        "B",
        "Lcom/facebook/share/ShareBuilder;",
        "readFrom",
        "model",
        "(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;",
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
.method public abstract readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)TB;"
        }
    .end annotation
.end method
