.class Lcom/unity3d/player/S;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/player/U;


# direct methods
.method constructor <init>(Lcom/unity3d/player/U;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/S;->a:Lcom/unity3d/player/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/S;->a:Lcom/unity3d/player/U;

    invoke-static {v0}, Lcom/unity3d/player/U;->-$$Nest$fgetf(Lcom/unity3d/player/U;)Lcom/unity3d/player/M;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/unity3d/player/U;->-$$Nest$fgeta(Lcom/unity3d/player/U;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->addViewToPlayer(Landroid/view/View;Z)Z

    iget-object v0, p0, Lcom/unity3d/player/S;->a:Lcom/unity3d/player/U;

    invoke-static {v0, v2}, Lcom/unity3d/player/U;->-$$Nest$fputi(Lcom/unity3d/player/U;Z)V

    invoke-static {v0}, Lcom/unity3d/player/U;->-$$Nest$fgetf(Lcom/unity3d/player/U;)Lcom/unity3d/player/M;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    :cond_0
    return-void
.end method
