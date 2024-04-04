.class Lcom/unity3d/player/E;
.super Landroid/database/ContentObserver;


# instance fields
.field private a:Lcom/unity3d/player/D;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/F;Landroid/os/Handler;Lcom/unity3d/player/D;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/unity3d/player/E;->a:Lcom/unity3d/player/D;

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/E;->a:Lcom/unity3d/player/D;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/unity3d/player/OrientationLockListener;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/OrientationLockListener;->a(Z)V

    :cond_0
    return-void
.end method
