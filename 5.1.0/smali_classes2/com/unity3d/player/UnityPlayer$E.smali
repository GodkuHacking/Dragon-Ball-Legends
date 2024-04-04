.class final enum Lcom/unity3d/player/UnityPlayer$E;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/UnityPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "E"
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/player/UnityPlayer$E;

.field public static final enum b:Lcom/unity3d/player/UnityPlayer$E;

.field public static final enum c:Lcom/unity3d/player/UnityPlayer$E;

.field public static final enum d:Lcom/unity3d/player/UnityPlayer$E;

.field public static final enum e:Lcom/unity3d/player/UnityPlayer$E;

.field public static final enum f:Lcom/unity3d/player/UnityPlayer$E;

.field public static final enum g:Lcom/unity3d/player/UnityPlayer$E;

.field public static final enum h:Lcom/unity3d/player/UnityPlayer$E;

.field public static final enum i:Lcom/unity3d/player/UnityPlayer$E;

.field public static final enum j:Lcom/unity3d/player/UnityPlayer$E;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/unity3d/player/UnityPlayer$E;

    const-string v1, "PAUSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer$E;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/UnityPlayer$E;->a:Lcom/unity3d/player/UnityPlayer$E;

    new-instance v0, Lcom/unity3d/player/UnityPlayer$E;

    const-string v1, "RESUME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer$E;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/UnityPlayer$E;->b:Lcom/unity3d/player/UnityPlayer$E;

    new-instance v0, Lcom/unity3d/player/UnityPlayer$E;

    const-string v1, "QUIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer$E;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/UnityPlayer$E;->c:Lcom/unity3d/player/UnityPlayer$E;

    new-instance v0, Lcom/unity3d/player/UnityPlayer$E;

    const-string v1, "SURFACE_LOST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer$E;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/UnityPlayer$E;->d:Lcom/unity3d/player/UnityPlayer$E;

    new-instance v0, Lcom/unity3d/player/UnityPlayer$E;

    const-string v1, "SURFACE_ACQUIRED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer$E;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/UnityPlayer$E;->e:Lcom/unity3d/player/UnityPlayer$E;

    new-instance v0, Lcom/unity3d/player/UnityPlayer$E;

    const-string v1, "FOCUS_LOST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer$E;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/UnityPlayer$E;->f:Lcom/unity3d/player/UnityPlayer$E;

    new-instance v0, Lcom/unity3d/player/UnityPlayer$E;

    const-string v1, "FOCUS_GAINED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer$E;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/UnityPlayer$E;->g:Lcom/unity3d/player/UnityPlayer$E;

    new-instance v0, Lcom/unity3d/player/UnityPlayer$E;

    const-string v1, "NEXT_FRAME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer$E;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/UnityPlayer$E;->h:Lcom/unity3d/player/UnityPlayer$E;

    new-instance v0, Lcom/unity3d/player/UnityPlayer$E;

    const-string v1, "URL_ACTIVATED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer$E;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/UnityPlayer$E;->i:Lcom/unity3d/player/UnityPlayer$E;

    new-instance v0, Lcom/unity3d/player/UnityPlayer$E;

    const-string v1, "ORIENTATION_ANGLE_CHANGE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer$E;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/UnityPlayer$E;->j:Lcom/unity3d/player/UnityPlayer$E;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
