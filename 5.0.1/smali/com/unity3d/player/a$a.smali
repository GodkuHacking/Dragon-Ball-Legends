.class final Lcom/unity3d/player/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/Set;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J

.field private e:J

.field private f:I

.field private g:I


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/String;IJJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/a$a;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/unity3d/player/a$a;->b:Ljava/lang/String;

    iput p3, p0, Lcom/unity3d/player/a$a;->c:I

    iput-wide p4, p0, Lcom/unity3d/player/a$a;->d:J

    iput-wide p6, p0, Lcom/unity3d/player/a$a;->e:J

    iput p8, p0, Lcom/unity3d/player/a$a;->f:I

    iput p9, p0, Lcom/unity3d/player/a$a;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/unity3d/player/a$a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    iget-object v3, p0, Lcom/unity3d/player/a$a;->b:Ljava/lang/String;

    iget v4, p0, Lcom/unity3d/player/a$a;->c:I

    iget-wide v5, p0, Lcom/unity3d/player/a$a;->d:J

    iget-wide v7, p0, Lcom/unity3d/player/a$a;->e:J

    iget v9, p0, Lcom/unity3d/player/a$a;->f:I

    iget v10, p0, Lcom/unity3d/player/a$a;->g:I

    invoke-interface/range {v2 .. v10}, Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;->onStatusUpdate(Ljava/lang/String;IJJII)V

    goto :goto_0

    :cond_0
    return-void
.end method
