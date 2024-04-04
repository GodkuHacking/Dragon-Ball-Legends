.class Lcom/unity3d/player/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

.field private b:Landroid/os/Looper;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/f;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/f;->b:Landroid/os/Looper;

    iput-object p2, p0, Lcom/unity3d/player/f;->c:Ljava/lang/String;

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

    iget-object v2, v0, Lcom/unity3d/player/f;->b:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v12, Lcom/unity3d/player/b;

    iget-object v2, v0, Lcom/unity3d/player/f;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v10, 0x0

    move-object v2, v12

    move-object v4, p1

    move v5, p2

    move-wide/from16 v6, p4

    move/from16 v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/unity3d/player/b;-><init>(Ljava/util/Set;Ljava/lang/String;IJJII)V

    invoke-virtual {v1, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 12

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/assetpacks/AssetPackStates;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_0

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

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/unity3d/player/i;->-$$Nest$sfgetd()Lcom/unity3d/player/i;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/unity3d/player/f;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    iget-object v4, p0, Lcom/unity3d/player/f;->b:Landroid/os/Looper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-static {}, Lcom/unity3d/player/i;->-$$Nest$sfgetd()Lcom/unity3d/player/i;

    move-result-object v5

    monitor-enter v5

    :try_start_1
    invoke-static {v2}, Lcom/unity3d/player/i;->-$$Nest$fgetc(Lcom/unity3d/player/i;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    new-instance v6, Lcom/unity3d/player/c;

    invoke-direct {v6, v2, v3, v4}, Lcom/unity3d/player/c;-><init>(Lcom/unity3d/player/i;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;Landroid/os/Looper;)V

    invoke-static {v2}, Lcom/unity3d/player/i;->-$$Nest$fgeta(Lcom/unity3d/player/i;)Lcom/google/android/play/core/assetpacks/AssetPackManager;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->registerListener(Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;)V

    invoke-static {v2, v6}, Lcom/unity3d/player/i;->-$$Nest$fputc(Lcom/unity3d/player/i;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    check-cast v6, Lcom/unity3d/player/c;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2
    :try_start_2
    invoke-static {v6}, Lcom/unity3d/player/c;->-$$Nest$fgeta(Lcom/unity3d/player/c;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v6

    .line 3
    :goto_1
    invoke-static {v2}, Lcom/unity3d/player/i;->-$$Nest$fgetb(Lcom/unity3d/player/i;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/unity3d/player/i;->-$$Nest$fgeta(Lcom/unity3d/player/i;)Lcom/google/android/play/core/assetpacks/AssetPackManager;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->fetch(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v6

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 4
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v8

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v9

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->totalBytes()J

    move-result-wide v10

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/unity3d/player/f;->a(Ljava/lang/String;IIJ)V

    goto/16 :goto_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    iget-object v1, p0, Lcom/unity3d/player/f;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/unity3d/player/i;->-$$Nest$sma(Ljava/lang/Throwable;)I

    move-result v3

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/player/f;->a(Ljava/lang/String;IIJ)V

    return-void
.end method
