.class final enum Lcom/unity3d/player/HFPStatus$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/HFPStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/player/HFPStatus$a;

.field public static final enum b:Lcom/unity3d/player/HFPStatus$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/unity3d/player/HFPStatus$a;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/HFPStatus$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/HFPStatus$a;->a:Lcom/unity3d/player/HFPStatus$a;

    new-instance v0, Lcom/unity3d/player/HFPStatus$a;

    const-string v1, "CONNECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/HFPStatus$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/HFPStatus$a;->b:Lcom/unity3d/player/HFPStatus$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
