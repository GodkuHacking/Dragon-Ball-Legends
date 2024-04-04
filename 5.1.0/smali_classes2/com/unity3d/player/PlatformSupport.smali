.class public Lcom/unity3d/player/PlatformSupport;
.super Ljava/lang/Object;


# static fields
.field static final MARSHMALLOW_SUPPORT:Z

.field static final NOUGAT_SUPPORT:Z

.field static final PIE_SUPPORT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sput-boolean v3, Lcom/unity3d/player/PlatformSupport;->MARSHMALLOW_SUPPORT:Z

    const/16 v3, 0x18

    if-lt v0, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    sput-boolean v3, Lcom/unity3d/player/PlatformSupport;->NOUGAT_SUPPORT:Z

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/unity3d/player/PlatformSupport;->PIE_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
