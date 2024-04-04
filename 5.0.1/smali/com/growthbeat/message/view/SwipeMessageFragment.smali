.class public Lcom/growthbeat/message/view/SwipeMessageFragment;
.super Lcom/growthbeat/message/view/BaseImageMessageFragment;
.source "SwipeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;,
        Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerAdapter;
    }
.end annotation


# static fields
.field private static final INDICATOR_HEIGHT:I = 0x8

.field private static final INDICATOR_TOP_MARGIN:I = 0x10


# instance fields
.field private swipeMessage:Lcom/growthbeat/message/model/SwipeMessage;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/growthbeat/message/view/BaseImageMessageFragment;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->swipeMessage:Lcom/growthbeat/message/model/SwipeMessage;

    .line 36
    iput-object v0, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method static synthetic access$000(Lcom/growthbeat/message/view/SwipeMessageFragment;)Lcom/growthbeat/message/model/SwipeMessage;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->swipeMessage:Lcom/growthbeat/message/model/SwipeMessage;

    return-object p0
.end method

.method private addCloseButton(Landroid/widget/FrameLayout;)V
    .locals 9

    .line 155
    sget-object v0, Lcom/growthbeat/message/model/Button$ButtonType;->close:Lcom/growthbeat/message/model/Button$ButtonType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->extractButtons(Ljava/util/EnumSet;)Ljava/util/List;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 160
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/growthbeat/message/model/CloseButton;

    .line 162
    invoke-virtual {v0}, Lcom/growthbeat/message/model/CloseButton;->getBaseWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 163
    invoke-virtual {v0}, Lcom/growthbeat/message/model/CloseButton;->getBaseHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 164
    iget-object v4, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 165
    iget-object v6, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v5

    float-to-int v5, v6

    .line 167
    new-instance v6, Lcom/growthbeat/message/view/TouchableImageView;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/growthbeat/message/view/TouchableImageView;-><init>(Landroid/content/Context;)V

    .line 168
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Lcom/growthbeat/message/view/TouchableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 169
    new-instance v7, Lcom/growthbeat/message/view/SwipeMessageFragment$1;

    invoke-direct {v7, p0, v0}, Lcom/growthbeat/message/view/SwipeMessageFragment$1;-><init>(Lcom/growthbeat/message/view/SwipeMessageFragment;Lcom/growthbeat/message/model/CloseButton;)V

    invoke-virtual {v6, v7}, Lcom/growthbeat/message/view/TouchableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual {v0}, Lcom/growthbeat/message/model/CloseButton;->getPicture()Lcom/growthbeat/message/model/Picture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/message/model/Picture;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->getImageResource(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/growthbeat/message/view/TouchableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 180
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 178
    invoke-virtual {v6, v0, v7}, Lcom/growthbeat/message/view/TouchableImageView;->measure(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v2, v2

    .line 183
    invoke-virtual {v6}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v2, v7

    int-to-float v3, v3

    invoke-virtual {v6}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v3, v7

    .line 182
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 185
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 186
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 187
    invoke-virtual {v6}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v0

    float-to-int v7, v7

    .line 188
    invoke-virtual {v6}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v0, v8

    invoke-direct {v3, v7, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x35

    .line 189
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 190
    invoke-virtual {v3, v1, v5, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 191
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 195
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createButtonLayout()Landroid/widget/FrameLayout;
    .locals 9

    .line 199
    sget-object v0, Lcom/growthbeat/message/model/Button$ButtonType;->image:Lcom/growthbeat/message/model/Button$ButtonType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->extractButtons(Ljava/util/EnumSet;)Ljava/util/List;

    move-result-object v0

    .line 200
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 202
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 204
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v4, :cond_0

    .line 205
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 206
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1

    .line 210
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/growthbeat/message/model/ImageButton;

    .line 212
    invoke-virtual {v0}, Lcom/growthbeat/message/model/ImageButton;->getBaseWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 213
    invoke-virtual {v0}, Lcom/growthbeat/message/model/ImageButton;->getBaseHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 215
    new-instance v5, Lcom/growthbeat/message/view/TouchableImageView;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/growthbeat/message/view/TouchableImageView;-><init>(Landroid/content/Context;)V

    .line 216
    new-instance v6, Lcom/growthbeat/message/view/SwipeMessageFragment$2;

    invoke-direct {v6, p0, v0}, Lcom/growthbeat/message/view/SwipeMessageFragment$2;-><init>(Lcom/growthbeat/message/view/SwipeMessageFragment;Lcom/growthbeat/message/model/ImageButton;)V

    invoke-virtual {v5, v6}, Lcom/growthbeat/message/view/TouchableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    invoke-virtual {v0}, Lcom/growthbeat/message/model/ImageButton;->getPicture()Lcom/growthbeat/message/model/Picture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/message/model/Picture;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->getImageResource(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/growthbeat/message/view/TouchableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 224
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v0}, Lcom/growthbeat/message/view/TouchableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 227
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 228
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 226
    invoke-virtual {v5, v0, v6}, Lcom/growthbeat/message/view/TouchableImageView;->measure(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v6, v2

    .line 231
    invoke-virtual {v5}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v4, v4

    invoke-virtual {v5}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v4, v7

    .line 230
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 233
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 234
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 235
    invoke-virtual {v5}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v0

    float-to-int v7, v7

    .line 236
    invoke-virtual {v5}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x11

    .line 237
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 238
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 242
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 244
    invoke-virtual {v5}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v0, v5

    invoke-direct {v6, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 246
    iget-object v0, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->swipeMessage:Lcom/growthbeat/message/model/SwipeMessage;

    invoke-virtual {v0}, Lcom/growthbeat/message/model/SwipeMessage;->getBaseHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    .line 247
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v2, v5, :cond_1

    const/16 v2, 0x30

    .line 248
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    float-to-int v0, v0

    .line 249
    invoke-virtual {v6, v3, v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setY(F)V

    .line 254
    :goto_0
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private createIndicatorLayout()Landroid/widget/FrameLayout;
    .locals 3

    .line 146
    new-instance v0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;

    invoke-direct {v0, p0}, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;-><init>(Lcom/growthbeat/message/view/SwipeMessageFragment;)V

    .line 147
    iget-object v1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 148
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 149
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private createSwipeLayout()Landroid/widget/FrameLayout;
    .locals 13

    .line 87
    iget-object v0, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->swipeMessage:Lcom/growthbeat/message/model/SwipeMessage;

    invoke-virtual {v0}, Lcom/growthbeat/message/model/SwipeMessage;->getBaseWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 88
    iget-object v1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->swipeMessage:Lcom/growthbeat/message/model/SwipeMessage;

    invoke-virtual {v1}, Lcom/growthbeat/message/model/SwipeMessage;->getBaseHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 90
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 93
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 98
    new-instance v5, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerAdapter;

    invoke-direct {v5, p0}, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerAdapter;-><init>(Lcom/growthbeat/message/view/SwipeMessageFragment;)V

    .line 99
    iget-object v6, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->swipeMessage:Lcom/growthbeat/message/model/SwipeMessage;

    invoke-virtual {v6}, Lcom/growthbeat/message/model/SwipeMessage;->getPictures()Ljava/util/List;

    move-result-object v6

    .line 101
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/growthbeat/message/model/Picture;

    .line 102
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v7}, Lcom/growthbeat/message/model/Picture;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/growthbeat/message/view/SwipeMessageFragment;->getImageResource(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v7, 0x0

    .line 107
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 108
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 106
    invoke-virtual {v8, v9, v7}, Landroid/widget/ImageView;->measure(II)V

    .line 110
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x3f800000    # 1.0f

    int-to-float v10, v0

    .line 113
    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    int-to-float v11, v1

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 112
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 115
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 116
    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v9

    float-to-int v11, v11

    .line 117
    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v9, v12

    invoke-direct {v10, v11, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x11

    .line 118
    iput v9, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 119
    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 123
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 126
    iput v9, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 127
    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    invoke-direct {p0, v7}, Lcom/growthbeat/message/view/SwipeMessageFragment;->addCloseButton(Landroid/widget/FrameLayout;)V

    .line 131
    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 133
    invoke-virtual {v5, v8}, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerAdapter;->add(Landroid/widget/FrameLayout;)V

    goto/16 :goto_0

    .line 136
    :cond_0
    new-instance v0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 137
    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 138
    iget-object v0, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method private extractButtons(Ljava/util/EnumSet;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/growthbeat/message/model/Button$ButtonType;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/growthbeat/message/model/Button;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    iget-object v1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->swipeMessage:Lcom/growthbeat/message/model/SwipeMessage;

    invoke-virtual {v1}, Lcom/growthbeat/message/model/SwipeMessage;->getButtons()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/growthbeat/message/model/Button;

    .line 267
    invoke-virtual {v2}, Lcom/growthbeat/message/model/Button;->getType()Lcom/growthbeat/message/model/Button$ButtonType;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private renderMessage()V
    .locals 10

    .line 54
    invoke-direct {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->createSwipeLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    invoke-direct {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->createButtonLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 61
    invoke-direct {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->createIndicatorLayout()Landroid/widget/FrameLayout;

    move-result-object v5

    .line 62
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x41000000    # 8.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, -0x2

    invoke-direct {v6, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 64
    iget-object v7, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x41800000    # 16.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 65
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-ge v8, v9, :cond_0

    const/16 v8, 0x30

    .line 66
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    add-int/2addr v2, v4

    add-int/2addr v2, v7

    const/4 v4, 0x0

    .line 67
    invoke-virtual {v6, v4, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 68
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v2, v4

    .line 73
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 76
    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 77
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 81
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "message"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 42
    instance-of p2, p1, Lcom/growthbeat/message/model/SwipeMessage;

    if-nez p2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    check-cast p1, Lcom/growthbeat/message/model/SwipeMessage;

    iput-object p1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->swipeMessage:Lcom/growthbeat/message/model/SwipeMessage;

    .line 46
    invoke-virtual {p1}, Lcom/growthbeat/message/model/SwipeMessage;->getBackground()Lcom/growthbeat/message/model/Background;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/message/view/SwipeMessageFragment;->generateBaseLayout(Lcom/growthbeat/message/model/Background;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->baseLayout:Landroid/widget/FrameLayout;

    .line 47
    invoke-direct {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment;->renderMessage()V

    .line 48
    iget-object p1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment;->baseLayout:Landroid/widget/FrameLayout;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
