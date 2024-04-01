.class public Lcom/google/googlesignin/GoogleSignInHelper;
.super Ljava/lang/Object;
.source "GoogleSignInHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SignInFragment"

.field public static loggingEnabled:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configure(Landroid/app/Activity;ZLjava/lang/String;ZZZZZLjava/lang/String;[Ljava/lang/String;J)V
    .locals 13

    const-string v0, "TokenFragment.configure called"

    .line 71
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/google/googlesignin/TokenRequest;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/google/googlesignin/TokenRequest;-><init>(ZLjava/lang/String;ZZZZZLjava/lang/String;[Ljava/lang/String;J)V

    .line 85
    invoke-static {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->getInstance(Landroid/app/Activity;)Lcom/google/googlesignin/GoogleSignInFragment;

    move-result-object v1

    .line 87
    invoke-virtual {v0}, Lcom/google/googlesignin/TokenRequest;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v1, v0}, Lcom/google/googlesignin/GoogleSignInFragment;->submitRequest(Lcom/google/googlesignin/TokenRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "There is already a pending authentication token request!"

    .line 89
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    const/4 v1, 0x0

    move-wide/from16 v2, p10

    .line 92
    invoke-static {v2, v3, v0, v1}, Lcom/google/googlesignin/GoogleSignInHelper;->nativeOnResult(JILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static disconnect(Landroid/app/Activity;)V
    .locals 0

    .line 120
    invoke-static {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->getInstance(Landroid/app/Activity;)Lcom/google/googlesignin/GoogleSignInFragment;

    move-result-object p0

    .line 121
    invoke-virtual {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->disconnect()V

    return-void
.end method

.method public static enableDebugLogging(Z)V
    .locals 0

    .line 37
    sput-boolean p0, Lcom/google/googlesignin/GoogleSignInHelper;->loggingEnabled:Z

    return-void
.end method

.method public static logDebug(Ljava/lang/String;)V
    .locals 1

    .line 135
    sget-boolean v0, Lcom/google/googlesignin/GoogleSignInHelper;->loggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "SignInFragment"

    .line 136
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SignInFragment"

    .line 131
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logInfo(Ljava/lang/String;)V
    .locals 1

    .line 125
    sget-boolean v0, Lcom/google/googlesignin/GoogleSignInHelper;->loggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "SignInFragment"

    .line 126
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static native nativeOnResult(JILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
.end method

.method public static signIn(Landroid/app/Activity;J)V
    .locals 1

    const-string v0, "AuthHelperFragment.authenticate called!"

    .line 97
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    .line 98
    invoke-static {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->getInstance(Landroid/app/Activity;)Lcom/google/googlesignin/GoogleSignInFragment;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->startSignIn()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0xa

    const/4 v0, 0x0

    .line 101
    invoke-static {p1, p2, p0, v0}, Lcom/google/googlesignin/GoogleSignInHelper;->nativeOnResult(JILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    :cond_0
    return-void
.end method

.method public static signInSilently(Landroid/app/Activity;J)V
    .locals 1

    const-string v0, "AuthHelperFragment.signinSilently called!"

    .line 106
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    .line 107
    invoke-static {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->getInstance(Landroid/app/Activity;)Lcom/google/googlesignin/GoogleSignInFragment;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->startSignInSilently()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0xa

    const/4 v0, 0x0

    .line 110
    invoke-static {p1, p2, p0, v0}, Lcom/google/googlesignin/GoogleSignInHelper;->nativeOnResult(JILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    :cond_0
    return-void
.end method

.method public static signOut(Landroid/app/Activity;)V
    .locals 0

    .line 115
    invoke-static {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->getInstance(Landroid/app/Activity;)Lcom/google/googlesignin/GoogleSignInFragment;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->signOut()V

    return-void
.end method
