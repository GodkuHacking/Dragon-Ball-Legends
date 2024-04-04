.class public final Lcom/facebook/internal/FileLruCache$openPutStream$renameToTargetCallback$1;
.super Ljava/lang/Object;
.source "FileLruCache.kt"

# interfaces
.implements Lcom/facebook/internal/FileLruCache$StreamCloseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/facebook/internal/FileLruCache$openPutStream$renameToTargetCallback$1",
        "Lcom/facebook/internal/FileLruCache$StreamCloseCallback;",
        "onClose",
        "",
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
.field final synthetic $buffer:Ljava/io/File;

.field final synthetic $bufferFileCreateTime:J

.field final synthetic $key:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/internal/FileLruCache;


# direct methods
.method constructor <init>(JLcom/facebook/internal/FileLruCache;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    iput-wide p1, p0, Lcom/facebook/internal/FileLruCache$openPutStream$renameToTargetCallback$1;->$bufferFileCreateTime:J

    iput-object p3, p0, Lcom/facebook/internal/FileLruCache$openPutStream$renameToTargetCallback$1;->this$0:Lcom/facebook/internal/FileLruCache;

    iput-object p4, p0, Lcom/facebook/internal/FileLruCache$openPutStream$renameToTargetCallback$1;->$buffer:Ljava/io/File;

    iput-object p5, p0, Lcom/facebook/internal/FileLruCache$openPutStream$renameToTargetCallback$1;->$key:Ljava/lang/String;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 4

    .line 169
    iget-wide v0, p0, Lcom/facebook/internal/FileLruCache$openPutStream$renameToTargetCallback$1;->$bufferFileCreateTime:J

    iget-object v2, p0, Lcom/facebook/internal/FileLruCache$openPutStream$renameToTargetCallback$1;->this$0:Lcom/facebook/internal/FileLruCache;

    invoke-static {v2}, Lcom/facebook/internal/FileLruCache;->access$getLastClearCacheTime$p(Lcom/facebook/internal/FileLruCache;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$openPutStream$renameToTargetCallback$1;->$buffer:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$openPutStream$renameToTargetCallback$1;->this$0:Lcom/facebook/internal/FileLruCache;

    iget-object v1, p0, Lcom/facebook/internal/FileLruCache$openPutStream$renameToTargetCallback$1;->$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/internal/FileLruCache$openPutStream$renameToTargetCallback$1;->$buffer:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/FileLruCache;->access$renameToTargetAndTrim(Lcom/facebook/internal/FileLruCache;Ljava/lang/String;Ljava/io/File;)V

    :goto_0
    return-void
.end method
