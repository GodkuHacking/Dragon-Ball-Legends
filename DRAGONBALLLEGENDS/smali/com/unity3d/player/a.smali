.class final Lcom/unity3d/player/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/a$c;,
        Lcom/unity3d/player/a$b;,
        Lcom/unity3d/player/a$a;,
        Lcom/unity3d/player/a$e;,
        Lcom/unity3d/player/a$d;
    }
.end annotation


# static fields
.field private static a:Lcom/unity3d/player/a;


# instance fields
.field private b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

.field private c:Ljava/util/HashSet;

.field private d:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/unity3d/player/a;->a:Lcom/unity3d/player/a;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/AssetPackManagerFactory;->getInstance(Landroid/content/Context;)Lcom/google/android/play/core/assetpacks/AssetPackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/a;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/a;->c:Ljava/util/HashSet;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "AssetPackManagerWrapper should be created only once. Use getInstance() instead."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a()Lcom/unity3d/player/a;
    .locals 1

    sget-object v0, Lcom/unity3d/player/a;->a:Lcom/unity3d/player/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/unity3d/player/d;
    .locals 1

    sget-object v0, Lcom/unity3d/player/a;->a:Lcom/unity3d/player/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unity3d/player/a;

    invoke-direct {v0, p0}, Lcom/unity3d/player/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unity3d/player/a;->a:Lcom/unity3d/player/a;

    :cond_0
    sget-object p0, Lcom/unity3d/player/a;->a:Lcom/unity3d/player/a;

    return-object p0
.end method

.method static synthetic a(Lcom/unity3d/player/a;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/a;->c:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic a(Lcom/unity3d/player/a;Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/player/a;->a(Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;Landroid/os/Looper;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;Landroid/os/Looper;)V
    .locals 2

    sget-object v0, Lcom/unity3d/player/a;->a:Lcom/unity3d/player/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/unity3d/player/a;->d:Ljava/lang/Object;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unity3d/player/a$b;

    invoke-direct {v1, p0, p2, p3}, Lcom/unity3d/player/a$b;-><init>(Lcom/unity3d/player/a;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;Landroid/os/Looper;)V

    iget-object p2, p0, Lcom/unity3d/player/a;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {p2, v1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->registerListener(Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;)V

    iput-object v1, p0, Lcom/unity3d/player/a;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/unity3d/player/a;->d:Ljava/lang/Object;

    check-cast p3, Lcom/unity3d/player/a$b;

    invoke-virtual {p3, p2}, Lcom/unity3d/player/a$b;->a(Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V

    :goto_0
    iget-object p2, p0, Lcom/unity3d/player/a;->c:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/unity3d/player/a;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->fetch(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/unity3d/player/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/a;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/unity3d/player/a;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/a;->d:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/unity3d/player/a$b;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/a$b;-><init>(Lcom/unity3d/player/a;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V

    iget-object p1, p0, Lcom/unity3d/player/a;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {p1, v0}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->registerListener(Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {v0, p1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->getPackLocation(Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackLocation;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->assetsPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/app/Activity;Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {v0, p1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->showCellularDataConfirmation(Landroid/app/Activity;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/unity3d/player/a$c;

    invoke-direct {v0, p2}, Lcom/unity3d/player/a$c;-><init>(Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;)V

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/unity3d/player/a$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/a;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    check-cast p1, Lcom/unity3d/player/a$b;

    invoke-interface {v0, p1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->unregisterListener(Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;)V

    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->cancel(Ljava/util/List;)Lcom/google/android/play/core/assetpacks/AssetPackStates;

    return-void
.end method

.method public final a([Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/unity3d/player/a;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->getPackStates(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v3

    new-instance v4, Lcom/unity3d/player/a$d;

    invoke-direct {v4, p2, v2}, Lcom/unity3d/player/a$d;-><init>(Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a([Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/a;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->getPackStates(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/unity3d/player/a$e;

    invoke-direct {v1, p2, p1}, Lcom/unity3d/player/a$e;-><init>(Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {v0, p1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->removePack(Ljava/lang/String;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method
