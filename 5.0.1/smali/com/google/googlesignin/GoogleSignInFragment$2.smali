.class Lcom/google/googlesignin/GoogleSignInFragment$2;
.super Ljava/lang/Object;
.source "GoogleSignInFragment.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/googlesignin/GoogleSignInFragment;->processRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/googlesignin/TokenResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/googlesignin/GoogleSignInFragment;


# direct methods
.method constructor <init>(Lcom/google/googlesignin/GoogleSignInFragment;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/google/googlesignin/GoogleSignInFragment$2;->this$0:Lcom/google/googlesignin/GoogleSignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 270
    check-cast p1, Lcom/google/googlesignin/TokenResult;

    invoke-virtual {p0, p1}, Lcom/google/googlesignin/GoogleSignInFragment$2;->onResult(Lcom/google/googlesignin/TokenResult;)V

    return-void
.end method

.method public onResult(Lcom/google/googlesignin/TokenResult;)V
    .locals 5

    .line 275
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 277
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenResult;->getHandle()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 278
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 279
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenResult;->getAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "Calling nativeOnResult: handle: %s, status: %d acct: %s"

    .line 274
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenResult;->getHandle()J

    move-result-wide v0

    .line 282
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    .line 283
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenResult;->getAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    .line 280
    invoke-static {v0, v1, v2, p1}, Lcom/google/googlesignin/GoogleSignInHelper;->nativeOnResult(JILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 284
    iget-object p1, p0, Lcom/google/googlesignin/GoogleSignInFragment$2;->this$0:Lcom/google/googlesignin/GoogleSignInFragment;

    invoke-static {p1, v3}, Lcom/google/googlesignin/GoogleSignInFragment;->access$200(Lcom/google/googlesignin/GoogleSignInFragment;Z)V

    return-void
.end method
