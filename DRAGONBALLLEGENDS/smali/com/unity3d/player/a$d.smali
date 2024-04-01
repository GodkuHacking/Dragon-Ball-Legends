.class final Lcom/unity3d/player/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

.field private b:Landroid/os/Looper;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/a$d;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/a$d;->b:Landroid/os/Looper;

    iput-object p2, p0, Lcom/unity3d/player/a$d;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;IIJ)V
    .locals 13

    move-object v0, p0

    const/4 v1, 0x4

    move v5, p2

    if-ne v5, v1, :cond_0

    move-wide/from16 v8, p4

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    move-wide v8, v1

    :goto_0
    new-instance v1, Landroid/os/Handler;

    iget-object v2, v0, Lcom/unity3d/player/a$d;->b:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v12, Lcom/unity3d/player/a$a;

    iget-object v2, v0, Lcom/unity3d/player/a$d;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v10, 0x0

    move-object v2, v12

    move-object v4, p1

    move v5, p2

    move-wide/from16 v6, p4

    move/from16 v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/unity3d/player/a$a;-><init>(Ljava/util/Set;Ljava/lang/String;IJJII)V

    invoke-virtual {v1, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/play/core/tasks/Task;)V
    .locals 11

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/assetpacks/AssetPackStates;
    :try_end_0
    .catch Lcom/google/android/play/core/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->packStates()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/unity3d/player/a;->a()Lcom/unity3d/player/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/unity3d/player/a$d;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    iget-object v4, p0, Lcom/unity3d/player/a$d;->b:Landroid/os/Looper;

    invoke-static {v2, v1, v3, v4}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a;Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;Landroid/os/Looper;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v7

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v8

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->totalBytes()J

    move-result-wide v9

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/unity3d/player/a$d;->a(Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    iget-object v1, p0, Lcom/unity3d/player/a$d;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/RuntimeExecutionException;->getErrorCode()I

    move-result v3

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/player/a$d;->a(Ljava/lang/String;IIJ)V

    return-void
.end method
