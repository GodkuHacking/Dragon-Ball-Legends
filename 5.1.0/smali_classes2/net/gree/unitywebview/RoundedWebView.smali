.class public Lnet/gree/unitywebview/RoundedWebView;
.super Landroid/webkit/WebView;
.source "RoundedWebView.java"


# instance fields
.field private context:Landroid/content/Context;

.field private dpRadius:I

.field private height:I

.field private radius:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 25
    iput p2, p0, Lnet/gree/unitywebview/RoundedWebView;->dpRadius:I

    .line 26
    invoke-direct {p0, p1}, Lnet/gree/unitywebview/RoundedWebView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput p3, p0, Lnet/gree/unitywebview/RoundedWebView;->dpRadius:I

    .line 33
    invoke-direct {p0, p1}, Lnet/gree/unitywebview/RoundedWebView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput p4, p0, Lnet/gree/unitywebview/RoundedWebView;->dpRadius:I

    .line 40
    invoke-direct {p0, p1}, Lnet/gree/unitywebview/RoundedWebView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private createPorterDuffClearPaint()Landroid/graphics/Paint;
    .locals 3

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    .line 85
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-object v0
.end method

.method private dpToPx(Landroid/content/Context;I)F
    .locals 1

    int-to-float p2, p2

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lnet/gree/unitywebview/RoundedWebView;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 66
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 70
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 72
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lnet/gree/unitywebview/RoundedWebView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lnet/gree/unitywebview/RoundedWebView;->width:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lnet/gree/unitywebview/RoundedWebView;->getScrollY()I

    move-result v4

    iget v5, p0, Lnet/gree/unitywebview/RoundedWebView;->height:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p0, Lnet/gree/unitywebview/RoundedWebView;->radius:I

    int-to-float v3, v2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 74
    invoke-direct {p0}, Lnet/gree/unitywebview/RoundedWebView;->createPorterDuffClearPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 57
    iput p1, p0, Lnet/gree/unitywebview/RoundedWebView;->width:I

    .line 59
    iput p2, p0, Lnet/gree/unitywebview/RoundedWebView;->height:I

    .line 61
    iget-object p1, p0, Lnet/gree/unitywebview/RoundedWebView;->context:Landroid/content/Context;

    iget p2, p0, Lnet/gree/unitywebview/RoundedWebView;->dpRadius:I

    invoke-direct {p0, p1, p2}, Lnet/gree/unitywebview/RoundedWebView;->dpToPx(Landroid/content/Context;I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lnet/gree/unitywebview/RoundedWebView;->radius:I

    return-void
.end method
