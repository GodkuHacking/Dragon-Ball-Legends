.class Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;
.super Landroid/view/View;
.source "SwipeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthbeat/message/view/SwipeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwipePagerIndicator"
.end annotation


# static fields
.field private static final DISTANCE:F = 24.0f

.field private static final RADIUS:F = 4.0f


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private position:I

.field final synthetic this$0:Lcom/growthbeat/message/view/SwipeMessageFragment;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Lcom/growthbeat/message/view/SwipeMessageFragment;)V
    .locals 1

    .line 318
    iput-object p1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->this$0:Lcom/growthbeat/message/view/SwipeMessageFragment;

    .line 319
    invoke-virtual {p1}, Lcom/growthbeat/message/view/SwipeMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 321
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 322
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 323
    iget-object p1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 324
    iget-object p1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 325
    iget-object p1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;I)V
    .locals 0

    .line 310
    invoke-direct {p0, p1}, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->setPosition(I)V

    return-void
.end method

.method private setPosition(I)V
    .locals 0

    .line 349
    iput p1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->position:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 354
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 356
    iget-object v0, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 361
    invoke-virtual {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget-object v3, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->this$0:Lcom/growthbeat/message/view/SwipeMessageFragment;

    iget-object v3, v3, Lcom/growthbeat/message/view/SwipeMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float/2addr v3, v4

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    int-to-float v3, v0

    mul-float/2addr v3, v4

    iget-object v5, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->this$0:Lcom/growthbeat/message/view/SwipeMessageFragment;

    iget-object v5, v5, Lcom/growthbeat/message/view/SwipeMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 363
    invoke-virtual {p0}, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 366
    iget v5, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->position:I

    if-ne v5, v2, :cond_1

    .line 367
    iget-object v5, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->paint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 369
    :cond_1
    iget-object v5, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->paint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    const/16 v7, 0x1e

    invoke-virtual {v5, v6, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    :goto_1
    int-to-float v5, v2

    mul-float/2addr v5, v4

    .line 371
    iget-object v6, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->this$0:Lcom/growthbeat/message/view/SwipeMessageFragment;

    iget-object v6, v6, Lcom/growthbeat/message/view/SwipeMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    const/high16 v6, 0x40800000    # 4.0f

    .line 373
    iget-object v7, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->this$0:Lcom/growthbeat/message/view/SwipeMessageFragment;

    iget-object v7, v7, Lcom/growthbeat/message/view/SwipeMessageFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v6

    iget-object v6, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v7, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 329
    iput-object p1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 331
    new-instance v0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator$1;

    invoke-direct {v0, p0}, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator$1;-><init>(Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method
