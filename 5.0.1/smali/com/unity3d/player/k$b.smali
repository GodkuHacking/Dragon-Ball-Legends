.class final Lcom/unity3d/player/k$b;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/k;

.field private b:Lcom/unity3d/player/k$a;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/k;Landroid/os/Handler;Lcom/unity3d/player/k$a;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/k$b;->a:Lcom/unity3d/player/k;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/unity3d/player/k$b;->b:Lcom/unity3d/player/k$a;

    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/unity3d/player/k$b;->b:Lcom/unity3d/player/k$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/unity3d/player/k$a;->b()V

    :cond_0
    return-void
.end method
