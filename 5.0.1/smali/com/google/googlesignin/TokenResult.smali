.class public Lcom/google/googlesignin/TokenResult;
.super Ljava/lang/Object;
.source "TokenResult.java"

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# instance fields
.field private account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private handle:J

.field private status:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlesignin/TokenResult;->status:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/google/googlesignin/TokenResult;->account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;I)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlesignin/TokenResult;->status:Lcom/google/android/gms/common/api/Status;

    .line 37
    iput-object p1, p0, Lcom/google/googlesignin/TokenResult;->account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method


# virtual methods
.method public getAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/googlesignin/TokenResult;->account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object v0
.end method

.method public getHandle()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/google/googlesignin/TokenResult;->handle:J

    return-wide v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/googlesignin/TokenResult;->status:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public setHandle(J)V
    .locals 0

    .line 64
    iput-wide p1, p0, Lcom/google/googlesignin/TokenResult;->handle:J

    return-void
.end method

.method public setStatus(I)V
    .locals 1

    .line 56
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlesignin/TokenResult;->status:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 43
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/googlesignin/TokenResult;->status:Lcom/google/android/gms/common/api/Status;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/googlesignin/TokenResult;->account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v2, :cond_0

    const-string v2, "<null>"

    :cond_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Status: %s %s"

    .line 42
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
