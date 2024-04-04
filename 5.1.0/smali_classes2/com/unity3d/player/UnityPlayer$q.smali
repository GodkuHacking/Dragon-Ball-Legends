.class Lcom/unity3d/player/UnityPlayer$q;
.super Landroid/view/OrientationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->startOrientationListener(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$q;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$q;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, v0, Lcom/unity3d/player/UnityPlayer;->m_MainThread:Lcom/unity3d/player/UnityPlayer$F;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$fgetmNaturalOrientation(Lcom/unity3d/player/UnityPlayer;)I

    move-result v0

    .line 1
    iput v0, v1, Lcom/unity3d/player/UnityPlayer$F;->f:I

    iput p1, v1, Lcom/unity3d/player/UnityPlayer$F;->g:I

    sget-object p1, Lcom/unity3d/player/UnityPlayer$E;->j:Lcom/unity3d/player/UnityPlayer$E;

    .line 2
    iget-object v0, v1, Lcom/unity3d/player/UnityPlayer$F;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x8dd

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
