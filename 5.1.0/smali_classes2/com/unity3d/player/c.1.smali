.class Lcom/unity3d/player/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;


# instance fields
.field private a:Ljava/util/HashSet;

.field private b:Landroid/os/Looper;

.field final synthetic c:Lcom/unity3d/player/i;


# direct methods
.method static bridge synthetic -$$Nest$fgeta(Lcom/unity3d/player/c;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/c;->a:Ljava/util/HashSet;

    return-object p0
.end method

.method public constructor <init>(Lcom/unity3d/player/i;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/c;->c:Lcom/unity3d/player/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/c;->a:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-object p3, p0, Lcom/unity3d/player/c;->b:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public onStateUpdate(Ljava/lang/Object;)V
    .locals 12

    check-cast p1, Lcom/google/android/play/core/assetpacks/AssetPackState;

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/unity3d/player/i;->-$$Nest$sfgetd()Lcom/unity3d/player/i;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/unity3d/player/c;->c:Lcom/unity3d/player/i;

    invoke-static {v1}, Lcom/unity3d/player/i;->-$$Nest$fgetb(Lcom/unity3d/player/i;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/unity3d/player/c;->c:Lcom/unity3d/player/i;

    invoke-static {v1}, Lcom/unity3d/player/i;->-$$Nest$fgetb(Lcom/unity3d/player/i;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/unity3d/player/c;->c:Lcom/unity3d/player/i;

    invoke-static {v1}, Lcom/unity3d/player/i;->-$$Nest$fgetc(Lcom/unity3d/player/i;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    instance-of v3, v2, Lcom/unity3d/player/c;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/unity3d/player/i;->-$$Nest$fgeta(Lcom/unity3d/player/i;)Lcom/google/android/play/core/assetpacks/AssetPackManager;

    move-result-object v1

    check-cast v2, Lcom/unity3d/player/c;

    invoke-interface {v1, v2}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->unregisterListener(Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;)V

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/unity3d/player/c;->c:Lcom/unity3d/player/i;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/unity3d/player/i;->-$$Nest$fputc(Lcom/unity3d/player/i;Ljava/lang/Object;)V

    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/unity3d/player/c;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_4

    monitor-exit p0

    goto :goto_1

    :cond_4
    :try_start_3
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unity3d/player/c;->b:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/unity3d/player/b;

    iget-object v2, p0, Lcom/unity3d/player/c;->a:Ljava/util/HashSet;

    .line 4
    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Set;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->totalBytesToDownload()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->bytesDownloaded()J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->transferProgressPercentage()I

    move-result v10

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v11

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lcom/unity3d/player/b;-><init>(Ljava/util/Set;Ljava/lang/String;IJJII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
