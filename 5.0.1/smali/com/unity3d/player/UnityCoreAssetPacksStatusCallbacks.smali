.class Lcom/unity3d/player/UnityCoreAssetPacksStatusCallbacks;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;
.implements Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native nativeStatusQueryResult(Ljava/lang/String;II)V
.end method


# virtual methods
.method public onStatusResult(J[Ljava/lang/String;[I[I)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    array-length p2, p4

    if-ge p1, p2, :cond_0

    aget-object p2, p3, p1

    aget v0, p4, p1

    aget v1, p5, p1

    invoke-direct {p0, p2, v0, v1}, Lcom/unity3d/player/UnityCoreAssetPacksStatusCallbacks;->nativeStatusQueryResult(Ljava/lang/String;II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStatusUpdate(Ljava/lang/String;IJJII)V
    .locals 0

    invoke-direct {p0, p1, p2, p8}, Lcom/unity3d/player/UnityCoreAssetPacksStatusCallbacks;->nativeStatusQueryResult(Ljava/lang/String;II)V

    return-void
.end method
