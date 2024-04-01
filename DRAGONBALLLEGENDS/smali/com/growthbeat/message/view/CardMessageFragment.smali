.class public Lcom/growthbeat/message/view/CardMessageFragment;
.super Lcom/growthbeat/message/view/BaseImageMessageFragment;
.source "CardMessageFragment.java"


# instance fields
.field private cardMessage:Lcom/growthbeat/message/model/CardMessage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/growthbeat/message/view/BaseImageMessageFragment;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/growthbeat/message/view/CardMessageFragment;->cardMessage:Lcom/growthbeat/message/model/CardMessage;

    return-void
.end method

.method static synthetic access$000(Lcom/growthbeat/message/view/CardMessageFragment;)Lcom/growthbeat/message/model/CardMessage;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/growthbeat/message/view/CardMessageFragment;->cardMessage:Lcom/growthbeat/message/model/CardMessage;

    return-object p0
.end method

.method private addCloseButton(Landroid/widget/FrameLayout;)V
    .locals 9

    .line 204
    sget-object v0, Lcom/growthbeat/message/model/Button$ButtonType;->close:Lcom/growthbeat/message/model/Button$ButtonType;

    invoke-direct {p0, v0}, Lcom/growthbeat/message/view/CardMessageFragment;->extractButtons(Lcom/growthbeat/message/model/Button$ButtonType;)Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 209
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/growthbeat/message/model/CloseButton;

    .line 211
    invoke-virtual {v0}, Lcom/growthbeat/message/model/CloseButton;->getBaseWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/growthbeat/message/view/CardMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 212
    invoke-virtual {v0}, Lcom/growthbeat/message/model/CloseButton;->getBaseHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/growthbeat/message/view/CardMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 213
    iget-object v4, p0, Lcom/growthbeat/message/view/CardMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 214
    iget-object v6, p0, Lcom/growthbeat/message/view/CardMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v5

    float-to-int v5, v6

    .line 216
    new-instance v6, Lcom/growthbeat/message/view/TouchableImageView;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/CardMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/growthbeat/message/view/TouchableImageView;-><init>(Landroid/content/Context;)V

    .line 217
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Lcom/growthbeat/message/view/TouchableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 218
    new-instance v7, Lcom/growthbeat/message/view/CardMessageFragment$4;

    invoke-direct {v7, p0, v0}, Lcom/growthbeat/message/view/CardMessageFragment$4;-><init>(Lcom/growthbeat/message/view/CardMessageFragment;Lcom/growthbeat/message/model/CloseButton;)V

    invoke-virtual {v6, v7}, Lcom/growthbeat/message/view/TouchableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-virtual {v0}, Lcom/growthbeat/message/model/CloseButton;->getPicture()Lcom/growthbeat/message/model/Picture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/message/model/Picture;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/growthbeat/message/view/CardMessageFragment;->getImageResource(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/growthbeat/message/view/TouchableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 229
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 227
    invoke-virtual {v6, v0, v7}, Lcom/growthbeat/message/view/TouchableImageView;->measure(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v2, v2

    .line 232
    invoke-virtual {v6}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v2, v7

    int-to-float v3, v3

    invoke-virtual {v6}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v3, v7

    .line 231
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 234
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/CardMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 235
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 236
    invoke-virtual {v6}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v0

    float-to-int v7, v7

    .line 237
    invoke-virtual {v6}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v0, v8

    invoke-direct {v3, v7, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x35

    .line 238
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 239
    invoke-virtual {v3, v1, v5, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 240
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 244
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createButtonLayout(II)Landroid/widget/FrameLayout;
    .locals 11

    .line 143
    sget-object v0, Lcom/growthbeat/message/model/Button$ButtonType;->image:Lcom/growthbeat/message/model/Button$ButtonType;

    invoke-direct {p0, v0}, Lcom/growthbeat/message/view/CardMessageFragment;->extractButtons(Lcom/growthbeat/message/model/Button$ButtonType;)Ljava/util/List;

    move-result-object v0

    .line 144
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 146
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/CardMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v4, :cond_0

    .line 149
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 150
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1

    .line 154
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/growthbeat/message/model/Button;

    .line 156
    check-cast v2, Lcom/growthbeat/message/model/ImageButton;

    .line 157
    invoke-virtual {v2}, Lcom/growthbeat/message/model/ImageButton;->getBaseWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/growthbeat/message/view/CardMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 158
    invoke-virtual {v2}, Lcom/growthbeat/message/model/ImageButton;->getBaseHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/growthbeat/message/view/CardMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 160
    new-instance v6, Lcom/growthbeat/message/view/TouchableImageView;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/CardMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/growthbeat/message/view/TouchableImageView;-><init>(Landroid/content/Context;)V

    .line 161
    new-instance v7, Lcom/growthbeat/message/view/CardMessageFragment$3;

    invoke-direct {v7, p0, v2}, Lcom/growthbeat/message/view/CardMessageFragment$3;-><init>(Lcom/growthbeat/message/view/CardMessageFragment;Lcom/growthbeat/message/model/ImageButton;)V

    invoke-virtual {v6, v7}, Lcom/growthbeat/message/view/TouchableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-virtual {v2}, Lcom/growthbeat/message/model/ImageButton;->getPicture()Lcom/growthbeat/message/model/Picture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/growthbeat/message/model/Picture;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/growthbeat/message/view/CardMessageFragment;->getImageResource(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/growthbeat/message/view/TouchableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v2}, Lcom/growthbeat/message/view/TouchableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 172
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 173
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 171
    invoke-virtual {v6, v2, v7}, Lcom/growthbeat/message/view/TouchableImageView;->measure(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v4, v4

    .line 176
    invoke-virtual {v6}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v4, v7

    int-to-float v5, v5

    invoke-virtual {v6}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    .line 175
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 178
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 179
    invoke-virtual {v6}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    .line 180
    invoke-virtual {v6}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v2, v7

    invoke-direct {v4, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 182
    iget v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 183
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 184
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    if-ge v7, v8, :cond_1

    const/16 v7, 0x30

    .line 185
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 186
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v2, v7

    int-to-double v7, v2

    mul-double/2addr v7, v9

    double-to-int v2, v7

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 187
    iget v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 189
    :cond_1
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v2, v7

    int-to-double v7, v2

    mul-double/2addr v7, v9

    double-to-int v2, v7

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setX(F)V

    .line 190
    iget v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v5, v2

    int-to-float v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setY(F)V

    .line 193
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    return-object v1
.end method

.method private createCardLayout()Landroid/widget/FrameLayout;
    .locals 6

    .line 72
    iget-object v0, p0, Lcom/growthbeat/message/view/CardMessageFragment;->cardMessage:Lcom/growthbeat/message/model/CardMessage;

    invoke-virtual {v0}, Lcom/growthbeat/message/model/CardMessage;->getBaseWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/growthbeat/message/view/CardMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 73
    iget-object v1, p0, Lcom/growthbeat/message/view/CardMessageFragment;->cardMessage:Lcom/growthbeat/message/model/CardMessage;

    invoke-virtual {v1}, Lcom/growthbeat/message/model/CardMessage;->getBaseHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/growthbeat/message/view/CardMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 75
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/CardMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76
    iget-object v3, p0, Lcom/growthbeat/message/view/CardMessageFragment;->cardMessage:Lcom/growthbeat/message/model/CardMessage;

    invoke-virtual {v3}, Lcom/growthbeat/message/model/CardMessage;->getPicture()Lcom/growthbeat/message/model/Picture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/growthbeat/message/model/Picture;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/growthbeat/message/view/CardMessageFragment;->getImageResource(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 77
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    new-instance v3, Lcom/growthbeat/message/view/CardMessageFragment$1;

    invoke-direct {v3, p0}, Lcom/growthbeat/message/view/CardMessageFragment$1;-><init>(Lcom/growthbeat/message/view/CardMessageFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v3, 0x0

    .line 88
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 89
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 87
    invoke-virtual {v2, v4, v3}, Landroid/widget/ImageView;->measure(II)V

    int-to-float v0, v0

    .line 92
    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 94
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/CardMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    .line 97
    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v0, v5

    invoke-direct {v3, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 98
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 99
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private createScreenButtonLayout(Lcom/growthbeat/message/model/ScreenButton;)Landroid/widget/FrameLayout;
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/growthbeat/message/view/CardMessageFragment;->cardMessage:Lcom/growthbeat/message/model/CardMessage;

    invoke-virtual {v0}, Lcom/growthbeat/message/model/CardMessage;->getBaseWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/growthbeat/message/view/CardMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 109
    iget-object v1, p0, Lcom/growthbeat/message/view/CardMessageFragment;->cardMessage:Lcom/growthbeat/message/model/CardMessage;

    invoke-virtual {v1}, Lcom/growthbeat/message/model/CardMessage;->getBaseHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/growthbeat/message/view/CardMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 111
    new-instance v2, Lcom/growthbeat/message/view/TouchableImageView;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/CardMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/growthbeat/message/view/TouchableImageView;-><init>(Landroid/content/Context;)V

    .line 112
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/growthbeat/message/view/TouchableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 113
    new-instance v3, Lcom/growthbeat/message/view/CardMessageFragment$2;

    invoke-direct {v3, p0, p1}, Lcom/growthbeat/message/view/CardMessageFragment$2;-><init>(Lcom/growthbeat/message/view/CardMessageFragment;Lcom/growthbeat/message/model/ScreenButton;)V

    invoke-virtual {v2, v3}, Lcom/growthbeat/message/view/TouchableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object p1, p0, Lcom/growthbeat/message/view/CardMessageFragment;->cardMessage:Lcom/growthbeat/message/model/CardMessage;

    invoke-virtual {p1}, Lcom/growthbeat/message/model/CardMessage;->getPicture()Lcom/growthbeat/message/model/Picture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/growthbeat/message/model/Picture;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/message/view/CardMessageFragment;->getImageResource(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/growthbeat/message/view/TouchableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 123
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 124
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 122
    invoke-virtual {v2, v3, p1}, Lcom/growthbeat/message/view/TouchableImageView;->measure(II)V

    int-to-float p1, v0

    .line 127
    invoke-virtual {v2}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float v0, v1

    invoke-virtual {v2}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 126
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 129
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/CardMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 130
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 131
    invoke-virtual {v2}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    .line 132
    invoke-virtual {v2}, Lcom/growthbeat/message/view/TouchableImageView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int p1, v4

    invoke-direct {v1, v3, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x11

    .line 133
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private extractButtons(Lcom/growthbeat/message/model/Button$ButtonType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/growthbeat/message/model/Button$ButtonType;",
            ")",
            "Ljava/util/List<",
            "Lcom/growthbeat/message/model/Button;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    iget-object v1, p0, Lcom/growthbeat/message/view/CardMessageFragment;->cardMessage:Lcom/growthbeat/message/model/CardMessage;

    invoke-virtual {v1}, Lcom/growthbeat/message/model/CardMessage;->getButtons()Ljava/util/List;

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

    .line 252
    invoke-virtual {v2}, Lcom/growthbeat/message/model/Button;->getType()Lcom/growthbeat/message/model/Button$ButtonType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 253
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private renderMessage()V
    .locals 7

    .line 47
    sget-object v0, Lcom/growthbeat/message/model/Button$ButtonType;->screen:Lcom/growthbeat/message/model/Button$ButtonType;

    invoke-direct {p0, v0}, Lcom/growthbeat/message/view/CardMessageFragment;->extractButtons(Lcom/growthbeat/message/model/Button$ButtonType;)Ljava/util/List;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/growthbeat/message/model/ScreenButton;

    invoke-direct {p0, v0}, Lcom/growthbeat/message/view/CardMessageFragment;->createScreenButtonLayout(Lcom/growthbeat/message/model/ScreenButton;)Landroid/widget/FrameLayout;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/growthbeat/message/view/CardMessageFragment;->createCardLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 55
    :goto_0
    invoke-direct {p0, v0}, Lcom/growthbeat/message/view/CardMessageFragment;->addCloseButton(Landroid/widget/FrameLayout;)V

    .line 57
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v1, v2}, Lcom/growthbeat/message/view/CardMessageFragment;->createButtonLayout(II)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 59
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/CardMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 62
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 63
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 66
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/growthbeat/message/view/CardMessageFragment;->baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/growthbeat/message/view/CardMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "message"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 33
    instance-of p2, p1, Lcom/growthbeat/message/model/CardMessage;

    if-nez p2, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    check-cast p1, Lcom/growthbeat/message/model/CardMessage;

    iput-object p1, p0, Lcom/growthbeat/message/view/CardMessageFragment;->cardMessage:Lcom/growthbeat/message/model/CardMessage;

    .line 37
    invoke-virtual {p1}, Lcom/growthbeat/message/model/CardMessage;->getBackground()Lcom/growthbeat/message/model/Background;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/message/view/CardMessageFragment;->generateBaseLayout(Lcom/growthbeat/message/model/Background;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/growthbeat/message/view/CardMessageFragment;->baseLayout:Landroid/widget/FrameLayout;

    .line 38
    invoke-direct {p0}, Lcom/growthbeat/message/view/CardMessageFragment;->renderMessage()V

    .line 39
    iget-object p1, p0, Lcom/growthbeat/message/view/CardMessageFragment;->baseLayout:Landroid/widget/FrameLayout;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
