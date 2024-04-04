.class public Lcom/google/googlesignin/TokenRequest;
.super Ljava/lang/Object;
.source "TokenRequest.java"


# instance fields
.field private accountName:Ljava/lang/String;

.field private doAuthCode:Z

.field private doEmail:Z

.field private doIdToken:Z

.field private forceRefresh:Z

.field private handle:J

.field private hidePopups:Z

.field private pendingResponse:Lcom/google/googlesignin/TokenPendingResult;

.field private scopes:[Ljava/lang/String;

.field private useGamesConfig:Z

.field private webClientId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZZZZLjava/lang/String;[Ljava/lang/String;J)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/google/googlesignin/TokenPendingResult;

    invoke-direct {v0, p10, p11}, Lcom/google/googlesignin/TokenPendingResult;-><init>(J)V

    iput-object v0, p0, Lcom/google/googlesignin/TokenRequest;->pendingResponse:Lcom/google/googlesignin/TokenPendingResult;

    .line 65
    iput-boolean p1, p0, Lcom/google/googlesignin/TokenRequest;->useGamesConfig:Z

    .line 66
    iput-object p2, p0, Lcom/google/googlesignin/TokenRequest;->webClientId:Ljava/lang/String;

    .line 67
    iput-boolean p3, p0, Lcom/google/googlesignin/TokenRequest;->doAuthCode:Z

    .line 68
    iput-boolean p4, p0, Lcom/google/googlesignin/TokenRequest;->forceRefresh:Z

    .line 69
    iput-boolean p5, p0, Lcom/google/googlesignin/TokenRequest;->doEmail:Z

    .line 70
    iput-boolean p6, p0, Lcom/google/googlesignin/TokenRequest;->doIdToken:Z

    .line 71
    iput-boolean p7, p0, Lcom/google/googlesignin/TokenRequest;->hidePopups:Z

    .line 72
    iput-object p8, p0, Lcom/google/googlesignin/TokenRequest;->accountName:Ljava/lang/String;

    .line 73
    iput-wide p10, p0, Lcom/google/googlesignin/TokenRequest;->handle:J

    if-eqz p9, :cond_0

    .line 74
    array-length p1, p9

    if-lez p1, :cond_0

    .line 75
    array-length p1, p9

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/googlesignin/TokenRequest;->scopes:[Ljava/lang/String;

    .line 76
    array-length p2, p9

    const/4 p3, 0x0

    invoke-static {p9, p3, p1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/google/googlesignin/TokenRequest;->scopes:[Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/googlesignin/TokenRequest;->pendingResponse:Lcom/google/googlesignin/TokenPendingResult;

    invoke-virtual {v0}, Lcom/google/googlesignin/TokenPendingResult;->cancel()V

    return-void
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/google/googlesignin/TokenRequest;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getDoAuthCode()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/google/googlesignin/TokenRequest;->doAuthCode:Z

    return v0
.end method

.method public getDoEmail()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/google/googlesignin/TokenRequest;->doEmail:Z

    return v0
.end method

.method public getDoIdToken()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/google/googlesignin/TokenRequest;->doIdToken:Z

    return v0
.end method

.method public getForceRefresh()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/google/googlesignin/TokenRequest;->forceRefresh:Z

    return v0
.end method

.method public getHandle()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/google/googlesignin/TokenRequest;->handle:J

    return-wide v0
.end method

.method public getHidePopups()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/google/googlesignin/TokenRequest;->hidePopups:Z

    return v0
.end method

.method public getPendingResponse()Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/googlesignin/TokenResult;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/googlesignin/TokenRequest;->pendingResponse:Lcom/google/googlesignin/TokenPendingResult;

    return-object v0
.end method

.method public getScopes()[Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/google/googlesignin/TokenRequest;->scopes:[Ljava/lang/String;

    return-object v0
.end method

.method public getUseGamesConfig()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/google/googlesignin/TokenRequest;->useGamesConfig:Z

    return v0
.end method

.method public getWebClientId()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/googlesignin/TokenRequest;->webClientId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/google/googlesignin/TokenRequest;->webClientId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcom/google/googlesignin/TokenRequest;->doAuthCode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "Invalid configuration, auth code requires web client id"

    .line 129
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logError(Ljava/lang/String;)V

    return v1

    .line 132
    :cond_1
    iget-boolean v0, p0, Lcom/google/googlesignin/TokenRequest;->doIdToken:Z

    if-eqz v0, :cond_2

    const-string v0, "Invalid configuration, id token requires web client id"

    .line 133
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logError(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public setResult(ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/googlesignin/TokenRequest;->pendingResponse:Lcom/google/googlesignin/TokenPendingResult;

    invoke-virtual {v0, p2, p1}, Lcom/google/googlesignin/TokenPendingResult;->setResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;I)V

    .line 99
    iget-object p2, p0, Lcom/google/googlesignin/TokenRequest;->pendingResponse:Lcom/google/googlesignin/TokenPendingResult;

    invoke-virtual {p2, p1}, Lcom/google/googlesignin/TokenPendingResult;->setStatus(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/google/googlesignin/TokenRequest;->doAuthCode:Z

    .line 113
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/google/googlesignin/TokenRequest;->doEmail:Z

    .line 114
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/google/googlesignin/TokenRequest;->doIdToken:Z

    .line 115
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "%s(a:%b:e:%b:i:%b)"

    .line 109
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
