.class Lcom/google/googlesignin/GoogleSignInFragment$3;
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
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/googlesignin/GoogleSignInFragment;


# direct methods
.method constructor <init>(Lcom/google/googlesignin/GoogleSignInFragment;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/google/googlesignin/GoogleSignInFragment$3;->this$0:Lcom/google/googlesignin/GoogleSignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V
    .locals 3

    .line 304
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment$3;->this$0:Lcom/google/googlesignin/GoogleSignInFragment;

    .line 306
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInFragment;->access$000(Lcom/google/googlesignin/GoogleSignInFragment;)Lcom/google/googlesignin/TokenRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlesignin/TokenRequest;->getHandle()J

    move-result-wide v0

    .line 307
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    .line 308
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    .line 305
    invoke-static {v0, v1, v2, p1}, Lcom/google/googlesignin/GoogleSignInHelper;->nativeOnResult(JILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 309
    iget-object p1, p0, Lcom/google/googlesignin/GoogleSignInFragment$3;->this$0:Lcom/google/googlesignin/GoogleSignInFragment;

    sget-object v0, Lcom/google/googlesignin/GoogleSignInFragment$State;->READY:Lcom/google/googlesignin/GoogleSignInFragment$State;

    invoke-static {p1, v0}, Lcom/google/googlesignin/GoogleSignInFragment;->access$100(Lcom/google/googlesignin/GoogleSignInFragment;Lcom/google/googlesignin/GoogleSignInFragment$State;)V

    goto :goto_0

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error with silentSignIn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logError(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment$3;->this$0:Lcom/google/googlesignin/GoogleSignInFragment;

    .line 314
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInFragment;->access$000(Lcom/google/googlesignin/GoogleSignInFragment;)Lcom/google/googlesignin/TokenRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlesignin/TokenRequest;->getHandle()J

    move-result-wide v0

    .line 315
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    .line 316
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    .line 313
    invoke-static {v0, v1, v2, p1}, Lcom/google/googlesignin/GoogleSignInHelper;->nativeOnResult(JILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 317
    iget-object p1, p0, Lcom/google/googlesignin/GoogleSignInFragment$3;->this$0:Lcom/google/googlesignin/GoogleSignInFragment;

    sget-object v0, Lcom/google/googlesignin/GoogleSignInFragment$State;->READY:Lcom/google/googlesignin/GoogleSignInFragment$State;

    invoke-static {p1, v0}, Lcom/google/googlesignin/GoogleSignInFragment;->access$100(Lcom/google/googlesignin/GoogleSignInFragment;Lcom/google/googlesignin/GoogleSignInFragment$State;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 301
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-virtual {p0, p1}, Lcom/google/googlesignin/GoogleSignInFragment$3;->onResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V

    return-void
.end method
