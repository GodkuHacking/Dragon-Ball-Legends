.class abstract Lcom/unity3d/player/u;
.super Ljava/lang/Object;


# static fields
.field protected static a:Z = false


# direct methods
.method protected static Log(ILjava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/unity3d/player/u;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x6

    const-string v1, "Unity"

    if-ne p0, v0, :cond_1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
