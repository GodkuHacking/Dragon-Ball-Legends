.class final enum Lcom/unity3d/player/r;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/unity3d/player/r;

.field public static final enum b:Lcom/unity3d/player/r;

.field public static final enum c:Lcom/unity3d/player/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/unity3d/player/r;

    const-string v1, "STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/r;->a:Lcom/unity3d/player/r;

    new-instance v0, Lcom/unity3d/player/r;

    const-string v1, "PAUSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/r;->b:Lcom/unity3d/player/r;

    new-instance v0, Lcom/unity3d/player/r;

    const-string v1, "STOPPED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/r;->c:Lcom/unity3d/player/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
