.class Lcom/unity3d/player/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/unity3d/player/B;


# direct methods
.method constructor <init>(Lcom/unity3d/player/B;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/z;->a:Lcom/unity3d/player/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/unity3d/player/z;->a:Lcom/unity3d/player/B;

    invoke-static {p2}, Lcom/unity3d/player/B;->-$$Nest$mb(Lcom/unity3d/player/B;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/unity3d/player/B;->-$$Nest$ma(Lcom/unity3d/player/B;Ljava/lang/String;Z)V

    :cond_0
    return p1
.end method
