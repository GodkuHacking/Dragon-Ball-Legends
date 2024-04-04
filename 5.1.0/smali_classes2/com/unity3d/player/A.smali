.class abstract Lcom/unity3d/player/A;
.super Ljava/lang/Object;


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I


# direct methods
.method static bridge synthetic -$$Nest$sfgeta()I
    .locals 1

    sget v0, Lcom/unity3d/player/A;->a:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetb()I
    .locals 1

    sget v0, Lcom/unity3d/player/A;->b:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetc()I
    .locals 1

    sget v0, Lcom/unity3d/player/A;->c:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lcom/unity3d/player/A;->a:I

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lcom/unity3d/player/A;->b:I

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lcom/unity3d/player/A;->c:I

    return-void
.end method
