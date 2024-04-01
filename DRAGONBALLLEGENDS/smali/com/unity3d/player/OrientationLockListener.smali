.class public Lcom/unity3d/player/OrientationLockListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/k$a;


# instance fields
.field private a:Lcom/unity3d/player/k;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/OrientationLockListener;->b:Landroid/content/Context;

    new-instance v0, Lcom/unity3d/player/k;

    invoke-direct {v0, p1}, Lcom/unity3d/player/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/OrientationLockListener;->a:Lcom/unity3d/player/k;

    iget-object p1, p0, Lcom/unity3d/player/OrientationLockListener;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accelerometer_rotation"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/unity3d/player/OrientationLockListener;->nativeUpdateOrientationLockState(I)V

    iget-object p1, p0, Lcom/unity3d/player/OrientationLockListener;->a:Lcom/unity3d/player/k;

    invoke-virtual {p1, p0, v0}, Lcom/unity3d/player/k;->a(Lcom/unity3d/player/k$a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/OrientationLockListener;->a:Lcom/unity3d/player/k;

    invoke-virtual {v0}, Lcom/unity3d/player/k;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/OrientationLockListener;->a:Lcom/unity3d/player/k;

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/OrientationLockListener;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/OrientationLockListener;->nativeUpdateOrientationLockState(I)V

    return-void
.end method

.method public final native nativeUpdateOrientationLockState(I)V
.end method
