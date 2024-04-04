.class public final Lcom/facebook/internal/ImageDownloader$DownloaderContext;
.super Ljava/lang/Object;
.source "ImageDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloaderContext"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\u0004R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/facebook/internal/ImageDownloader$DownloaderContext;",
        "",
        "request",
        "Lcom/facebook/internal/ImageRequest;",
        "(Lcom/facebook/internal/ImageRequest;)V",
        "isCancelled",
        "",
        "()Z",
        "setCancelled",
        "(Z)V",
        "getRequest",
        "()Lcom/facebook/internal/ImageRequest;",
        "setRequest",
        "workItem",
        "Lcom/facebook/internal/WorkQueue$WorkItem;",
        "getWorkItem",
        "()Lcom/facebook/internal/WorkQueue$WorkItem;",
        "setWorkItem",
        "(Lcom/facebook/internal/WorkQueue$WorkItem;)V",
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


# instance fields
.field private isCancelled:Z

.field private request:Lcom/facebook/internal/ImageRequest;

.field private workItem:Lcom/facebook/internal/WorkQueue$WorkItem;


# direct methods
.method public constructor <init>(Lcom/facebook/internal/ImageRequest;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    return-void
.end method


# virtual methods
.method public final getRequest()Lcom/facebook/internal/ImageRequest;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    return-object v0
.end method

.method public final getWorkItem()Lcom/facebook/internal/WorkQueue$WorkItem;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    return v0
.end method

.method public final setCancelled(Z)V
    .locals 0

    .line 315
    iput-boolean p1, p0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    return-void
.end method

.method public final setRequest(Lcom/facebook/internal/ImageRequest;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    iput-object p1, p0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    return-void
.end method

.method public final setWorkItem(Lcom/facebook/internal/WorkQueue$WorkItem;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    return-void
.end method
