.class final Lcom/facebook/AccessTokenManager$RefreshResult;
.super Ljava/lang/Object;
.source "AccessTokenManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RefreshResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0006\"\u0004\u0008\u001b\u0010\u0008\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/facebook/AccessTokenManager$RefreshResult;",
        "",
        "()V",
        "accessToken",
        "",
        "getAccessToken",
        "()Ljava/lang/String;",
        "setAccessToken",
        "(Ljava/lang/String;)V",
        "dataAccessExpirationTime",
        "",
        "getDataAccessExpirationTime",
        "()Ljava/lang/Long;",
        "setDataAccessExpirationTime",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "expiresAt",
        "",
        "getExpiresAt",
        "()I",
        "setExpiresAt",
        "(I)V",
        "expiresIn",
        "getExpiresIn",
        "setExpiresIn",
        "graphDomain",
        "getGraphDomain",
        "setGraphDomain",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private accessToken:Ljava/lang/String;

.field private dataAccessExpirationTime:Ljava/lang/Long;

.field private expiresAt:I

.field private expiresIn:I

.field private graphDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataAccessExpirationTime()Ljava/lang/Long;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->dataAccessExpirationTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getExpiresAt()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresAt:I

    return v0
.end method

.method public final getExpiresIn()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresIn:I

    return v0
.end method

.method public final getGraphDomain()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->graphDomain:Ljava/lang/String;

    return-object v0
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public final setDataAccessExpirationTime(Ljava/lang/Long;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->dataAccessExpirationTime:Ljava/lang/Long;

    return-void
.end method

.method public final setExpiresAt(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresAt:I

    return-void
.end method

.method public final setExpiresIn(I)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresIn:I

    return-void
.end method

.method public final setGraphDomain(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->graphDomain:Ljava/lang/String;

    return-void
.end method
