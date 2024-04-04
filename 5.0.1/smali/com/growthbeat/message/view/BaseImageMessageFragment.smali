.class public Lcom/growthbeat/message/view/BaseImageMessageFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseImageMessageFragment.java"


# static fields
.field protected static final BASE_CLOSE_PADDING:I = 0x8


# instance fields
.field protected baseLayout:Landroid/widget/FrameLayout;

.field protected displayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/growthbeat/message/view/BaseImageMessageFragment;->baseLayout:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method protected finishActivity()V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/growthbeat/message/view/BaseImageMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/growthbeat/message/view/BaseImageMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/growthbeat/message/view/BaseImageMessageFragment;->baseLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 55
    :cond_2
    invoke-static {v0}, Lcom/growthbeat/utils/BitmapUtilis;->unbindRecursively(Landroid/view/View;)V

    .line 56
    invoke-virtual {p0}, Lcom/growthbeat/message/view/BaseImageMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method protected generateBaseLayout(Lcom/growthbeat/message/model/Background;)Landroid/widget/FrameLayout;
    .locals 7

    .line 26
    invoke-virtual {p0}, Lcom/growthbeat/message/view/BaseImageMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/growthbeat/message/view/BaseImageMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 28
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/BaseImageMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 29
    invoke-virtual {p1}, Lcom/growthbeat/message/model/Background;->getColor()I

    move-result v3

    const v4, 0xffffff

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "#%06X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 30
    invoke-virtual {p1}, Lcom/growthbeat/message/model/Background;->getOpacity()D

    move-result-wide v3

    const-wide v5, 0x406fe00000000000L    # 255.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 31
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 30
    invoke-static {v3, v4, v5, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 33
    invoke-virtual {p1}, Lcom/growthbeat/message/model/Background;->isOutsideClose()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 35
    new-instance p1, Lcom/growthbeat/message/view/BaseImageMessageFragment$1;

    invoke-direct {p1, p0}, Lcom/growthbeat/message/view/BaseImageMessageFragment$1;-><init>(Lcom/growthbeat/message/view/BaseImageMessageFragment;)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object v0
.end method

.method protected getImageResource(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 48
    invoke-static {}, Lcom/growthbeat/message/GrowthMessage;->getInstance()Lcom/growthbeat/message/GrowthMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/message/GrowthMessage;->getMessageImageCacheManager()Lcom/growthbeat/message/MessageImageCacheManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/growthbeat/message/MessageImageCacheManager;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method
