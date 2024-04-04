.class final Lcom/unity3d/player/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/k$b;,
        Lcom/unity3d/player/k$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/unity3d/player/k$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/k;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/k$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/k$b;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/k$b;

    :cond_0
    return-void
.end method

.method public final a(Lcom/unity3d/player/k$a;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/unity3d/player/k$b;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/unity3d/player/k$b;-><init>(Lcom/unity3d/player/k;Landroid/os/Handler;Lcom/unity3d/player/k$a;)V

    iput-object v0, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/k$b;

    iget-object p1, p0, Lcom/unity3d/player/k;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/unity3d/player/k;->b:Lcom/unity3d/player/k$b;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
