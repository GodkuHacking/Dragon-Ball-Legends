.class Lcom/unity3d/player/UnityPlayer$h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->setSelection(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;II)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$h;->c:Lcom/unity3d/player/UnityPlayer;

    iput p2, p0, Lcom/unity3d/player/UnityPlayer$h;->a:I

    iput p3, p0, Lcom/unity3d/player/UnityPlayer$h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$h;->c:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->mSoftInputDialog:Lcom/unity3d/player/B;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/unity3d/player/UnityPlayer$h;->a:I

    iget v2, p0, Lcom/unity3d/player/UnityPlayer$h;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/B;->a(II)V

    :cond_0
    return-void
.end method
