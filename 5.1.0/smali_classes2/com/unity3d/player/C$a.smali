.class final enum Lcom/unity3d/player/C$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/player/C$a;

.field private static final synthetic b:[Lcom/unity3d/player/C$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/unity3d/player/C$a;

    const-string v1, "Center"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/C$a;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/unity3d/player/C$a;

    const-string v3, "Fit"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/player/C$a;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/unity3d/player/C$a;

    const-string v5, "Fill"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/player/C$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/player/C$a;->a:Lcom/unity3d/player/C$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/unity3d/player/C$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/unity3d/player/C$a;->b:[Lcom/unity3d/player/C$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/unity3d/player/C$a;
    .locals 1

    sget-object v0, Lcom/unity3d/player/C$a;->b:[Lcom/unity3d/player/C$a;

    invoke-virtual {v0}, [Lcom/unity3d/player/C$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/player/C$a;

    return-object v0
.end method
