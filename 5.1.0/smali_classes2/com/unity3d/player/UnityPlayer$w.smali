.class Lcom/unity3d/player/UnityPlayer$w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$w;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$w;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$fgetmMainDisplayOverride(Lcom/unity3d/player/UnityPlayer;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$fgetmGlView(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/I;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$fgetmGlView(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/I;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$w;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$fgetmGlView(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/I;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    const-string v1, "Couldn\'t add view, because it\'s already assigned to another parent"

    invoke-static {v0, v1}, Lcom/unity3d/player/u;->Log(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
