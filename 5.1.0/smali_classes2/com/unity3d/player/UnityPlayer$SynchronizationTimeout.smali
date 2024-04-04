.class public final enum Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/UnityPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SynchronizationTimeout"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;

.field public static final enum Destroy:Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;

.field public static final enum Pause:Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;

.field public static final enum SurfaceDetach:Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;


# instance fields
.field private m_TimeoutMilliseconds:I

.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;

    const-string v1, "Pause"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;->Pause:Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;

    const-string v3, "SurfaceDetach"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;->SurfaceDetach:Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;

    new-instance v3, Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;

    const-string v5, "Destroy"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;->Destroy:Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;->$VALUES:[Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;->value:I

    const/16 p1, 0x7d0

    iput p1, p0, Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;->m_TimeoutMilliseconds:I

    return-void
.end method

.method public static setTimeoutForAll(I)V
    .locals 4

    const-class v0, Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;->setTimeout(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;
    .locals 1

    const-class v0, Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;
    .locals 1

    sget-object v0, Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;->$VALUES:[Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;

    invoke-virtual {v0}, [Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;

    return-object v0
.end method


# virtual methods
.method public getTimeout()I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;->m_TimeoutMilliseconds:I

    return v0
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/unity3d/player/UnityPlayer$SynchronizationTimeout;->m_TimeoutMilliseconds:I

    return-void
.end method
