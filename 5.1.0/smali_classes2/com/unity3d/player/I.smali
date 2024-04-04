.class Lcom/unity3d/player/I;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Lcom/unity3d/player/a;

.field private b:Lcom/unity3d/player/UnityPlayer;

.field private c:Lcom/unity3d/player/w;


# direct methods
.method static bridge synthetic -$$Nest$fgeta(Lcom/unity3d/player/I;)Lcom/unity3d/player/a;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/I;->a:Lcom/unity3d/player/a;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetb(Lcom/unity3d/player/I;)Lcom/unity3d/player/UnityPlayer;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/I;->b:Lcom/unity3d/player/UnityPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetc(Lcom/unity3d/player/I;)Lcom/unity3d/player/w;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/I;->c:Lcom/unity3d/player/w;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/unity3d/player/w;

    invoke-direct {v0, p1}, Lcom/unity3d/player/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/I;->c:Lcom/unity3d/player/w;

    iput-object p2, p0, Lcom/unity3d/player/I;->b:Lcom/unity3d/player/UnityPlayer;

    new-instance v0, Lcom/unity3d/player/a;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/player/a;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;)V

    iput-object v0, p0, Lcom/unity3d/player/I;->a:Lcom/unity3d/player/a;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unitySurfaceView"

    const-string v3, "id"

    invoke-virtual {p2, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/SurfaceView;->setId(I)V

    invoke-direct {p0}, Lcom/unity3d/player/I;->a()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/unity3d/player/I;->a:Lcom/unity3d/player/a;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    const/4 v2, -0x3

    invoke-interface {p2, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object p2, p0, Lcom/unity3d/player/I;->a:Lcom/unity3d/player/a;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/unity3d/player/I;->a:Lcom/unity3d/player/a;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p2, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/high16 p2, -0x1000000

    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/unity3d/player/I;->a:Lcom/unity3d/player/a;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    new-instance v2, Lcom/unity3d/player/H;

    invoke-direct {v2, p0}, Lcom/unity3d/player/H;-><init>(Lcom/unity3d/player/I;)V

    invoke-interface {p2, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p2, p0, Lcom/unity3d/player/I;->a:Lcom/unity3d/player/a;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceView;->setFocusable(Z)V

    iget-object p2, p0, Lcom/unity3d/player/I;->a:Lcom/unity3d/player/a;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    iget-object p2, p0, Lcom/unity3d/player/I;->a:Lcom/unity3d/player/a;

    invoke-direct {p0, p1}, Lcom/unity3d/player/I;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/SurfaceView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/unity3d/player/I;->a:Lcom/unity3d/player/a;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {p2, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "game_view_content_description"

    const-string v3, "string"

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()Z
    .locals 4

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010058

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method


# virtual methods
.method a(F)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/I;->a:Lcom/unity3d/player/a;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/a;->a(F)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/I;->c:Lcom/unity3d/player/w;

    iget-object v1, p0, Lcom/unity3d/player/I;->b:Lcom/unity3d/player/UnityPlayer;

    .line 1
    iget-object v2, v0, Lcom/unity3d/player/w;->b:Lcom/unity3d/player/v;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/unity3d/player/w;->b:Lcom/unity3d/player/v;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/I;->c:Lcom/unity3d/player/w;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/unity3d/player/w;->b:Lcom/unity3d/player/v;

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/I;->a:Lcom/unity3d/player/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/player/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
