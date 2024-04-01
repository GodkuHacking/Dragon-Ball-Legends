.class final Lcom/unity3d/player/a$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/a$e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

.field private b:Landroid/os/Looper;

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/a$e;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/a$e;->b:Landroid/os/Looper;

    iput-object p2, p0, Lcom/unity3d/player/a$e;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/play/core/tasks/Task;)V
    .locals 14

    iget-object v0, p0, Lcom/unity3d/player/a$e;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/assetpacks/AssetPackStates;
    :try_end_0
    .catch Lcom/google/android/play/core/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->packStates()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    new-array v8, v3, [Ljava/lang/String;

    new-array v9, v3, [I

    new-array v10, v3, [I

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v1

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v4

    aput v4, v9, v1

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v3

    aput v3, v10, v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unity3d/player/a$e;->b:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/unity3d/player/a$e$a;

    iget-object v5, p0, Lcom/unity3d/player/a$e;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->totalBytes()J

    move-result-wide v6

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/unity3d/player/a$e$a;-><init>(Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;J[Ljava/lang/String;[I[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/RuntimeExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/player/a$e;->c:[Ljava/lang/String;

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/unity3d/player/a$e;->b:Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/unity3d/player/a$e$a;

    iget-object v8, p0, Lcom/unity3d/player/a$e;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    const-wide/16 v9, 0x0

    new-array v11, v0, [Ljava/lang/String;

    aput-object v6, v11, v1

    new-array v12, v0, [I

    aput v1, v12, v1

    new-array v13, v0, [I

    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/RuntimeExecutionException;->getErrorCode()I

    move-result p1

    aput p1, v13, v1

    move-object v7, v3

    invoke-direct/range {v7 .. v13}, Lcom/unity3d/player/a$e$a;-><init>(Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;J[Ljava/lang/String;[I[I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/unity3d/player/a$e;->c:[Ljava/lang/String;

    array-length v2, v0

    new-array v8, v2, [I

    array-length v0, v0

    new-array v9, v0, [I

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/unity3d/player/a$e;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    aput v1, v8, v0

    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/RuntimeExecutionException;->getErrorCode()I

    move-result v2

    aput v2, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/unity3d/player/a$e;->b:Landroid/os/Looper;

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/unity3d/player/a$e$a;

    iget-object v4, p0, Lcom/unity3d/player/a$e;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/unity3d/player/a$e;->c:[Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/unity3d/player/a$e$a;-><init>(Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;J[Ljava/lang/String;[I[I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
