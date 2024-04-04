.class public final Lcom/facebook/share/model/ShareStoryContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "ShareStoryContent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareStoryContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder<",
        "Lcom/facebook/share/model/ShareStoryContent;",
        "Lcom/facebook/share/model/ShareStoryContent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001c\u001a\u00020\u0002H\u0016J\u0012\u0010\u001d\u001a\u00020\u00002\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u001f\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0018\u0010 \u001a\u00020\u00002\u0010\u0010\n\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u000bJ\u0016\u0010!\u001a\u00020\u00002\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0011J\u0010\u0010\"\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\n\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u000bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0011X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006#"
    }
    d2 = {
        "Lcom/facebook/share/model/ShareStoryContent$Builder;",
        "Lcom/facebook/share/model/ShareContent$Builder;",
        "Lcom/facebook/share/model/ShareStoryContent;",
        "()V",
        "attributionLink",
        "",
        "getAttributionLink$facebook_common_release",
        "()Ljava/lang/String;",
        "setAttributionLink$facebook_common_release",
        "(Ljava/lang/String;)V",
        "backgroundAsset",
        "Lcom/facebook/share/model/ShareMedia;",
        "getBackgroundAsset$facebook_common_release",
        "()Lcom/facebook/share/model/ShareMedia;",
        "setBackgroundAsset$facebook_common_release",
        "(Lcom/facebook/share/model/ShareMedia;)V",
        "backgroundColorList",
        "",
        "getBackgroundColorList$facebook_common_release",
        "()Ljava/util/List;",
        "setBackgroundColorList$facebook_common_release",
        "(Ljava/util/List;)V",
        "stickerAsset",
        "Lcom/facebook/share/model/SharePhoto;",
        "getStickerAsset$facebook_common_release",
        "()Lcom/facebook/share/model/SharePhoto;",
        "setStickerAsset$facebook_common_release",
        "(Lcom/facebook/share/model/SharePhoto;)V",
        "build",
        "readFrom",
        "model",
        "setAttributionLink",
        "setBackgroundAsset",
        "setBackgroundColorList",
        "setStickerAsset",
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


# instance fields
.field private attributionLink:Ljava/lang/String;

.field private backgroundAsset:Lcom/facebook/share/model/ShareMedia;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/share/model/ShareMedia<",
            "**>;"
        }
    .end annotation
.end field

.field private backgroundColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stickerAsset:Lcom/facebook/share/model/SharePhoto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareStoryContent;
    .locals 2

    .line 123
    new-instance v0, Lcom/facebook/share/model/ShareStoryContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareStoryContent;-><init>(Lcom/facebook/share/model/ShareStoryContent$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent$Builder;->build()Lcom/facebook/share/model/ShareStoryContent;

    move-result-object v0

    return-object v0
.end method

.method public final getAttributionLink$facebook_common_release()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->attributionLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getBackgroundAsset$facebook_common_release()Lcom/facebook/share/model/ShareMedia;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/share/model/ShareMedia<",
            "**>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->backgroundAsset:Lcom/facebook/share/model/ShareMedia;

    return-object v0
.end method

.method public final getBackgroundColorList$facebook_common_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->backgroundColorList:Ljava/util/List;

    return-object v0
.end method

.method public final getStickerAsset$facebook_common_release()Lcom/facebook/share/model/SharePhoto;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->stickerAsset:Lcom/facebook/share/model/SharePhoto;

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 0

    .line 72
    check-cast p1, Lcom/facebook/share/model/ShareStoryContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareStoryContent$Builder;->readFrom(Lcom/facebook/share/model/ShareStoryContent;)Lcom/facebook/share/model/ShareStoryContent$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareContent$Builder;

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 0

    .line 72
    check-cast p1, Lcom/facebook/share/model/ShareStoryContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareStoryContent$Builder;->readFrom(Lcom/facebook/share/model/ShareStoryContent;)Lcom/facebook/share/model/ShareStoryContent$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareModelBuilder;

    return-object p1
.end method

.method public readFrom(Lcom/facebook/share/model/ShareStoryContent;)Lcom/facebook/share/model/ShareStoryContent$Builder;
    .locals 2

    if-nez p1, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 130
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/facebook/share/model/ShareContent;

    invoke-super {p0, v0}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareStoryContent$Builder;

    .line 131
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareStoryContent;->getBackgroundAsset()Lcom/facebook/share/model/ShareMedia;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareStoryContent$Builder;->setBackgroundAsset(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareStoryContent$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareStoryContent;->getStickerAsset()Lcom/facebook/share/model/SharePhoto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareStoryContent$Builder;->setStickerAsset(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/ShareStoryContent$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareStoryContent;->getBackgroundColorList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareStoryContent$Builder;->setBackgroundColorList(Ljava/util/List;)Lcom/facebook/share/model/ShareStoryContent$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareStoryContent;->getAttributionLink()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareStoryContent$Builder;->setAttributionLink(Ljava/lang/String;)Lcom/facebook/share/model/ShareStoryContent$Builder;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final setAttributionLink(Ljava/lang/String;)Lcom/facebook/share/model/ShareStoryContent$Builder;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->attributionLink:Ljava/lang/String;

    return-object p0
.end method

.method public final setAttributionLink$facebook_common_release(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->attributionLink:Ljava/lang/String;

    return-void
.end method

.method public final setBackgroundAsset(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareStoryContent$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareMedia<",
            "**>;)",
            "Lcom/facebook/share/model/ShareStoryContent$Builder;"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->backgroundAsset:Lcom/facebook/share/model/ShareMedia;

    return-object p0
.end method

.method public final setBackgroundAsset$facebook_common_release(Lcom/facebook/share/model/ShareMedia;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareMedia<",
            "**>;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->backgroundAsset:Lcom/facebook/share/model/ShareMedia;

    return-void
.end method

.method public final setBackgroundColorList(Ljava/util/List;)Lcom/facebook/share/model/ShareStoryContent$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/share/model/ShareStoryContent$Builder;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 107
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->backgroundColorList:Ljava/util/List;

    return-object p0
.end method

.method public final setBackgroundColorList$facebook_common_release(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->backgroundColorList:Ljava/util/List;

    return-void
.end method

.method public final setStickerAsset(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/ShareStoryContent$Builder;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->stickerAsset:Lcom/facebook/share/model/SharePhoto;

    return-object p0
.end method

.method public final setStickerAsset$facebook_common_release(Lcom/facebook/share/model/SharePhoto;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->stickerAsset:Lcom/facebook/share/model/SharePhoto;

    return-void
.end method
