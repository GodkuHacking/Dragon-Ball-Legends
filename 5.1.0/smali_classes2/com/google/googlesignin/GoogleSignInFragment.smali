.class public Lcom/google/googlesignin/GoogleSignInFragment;
.super Landroid/app/Fragment;
.source "GoogleSignInFragment.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlesignin/GoogleSignInFragment$State;
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "signin.SignInFragment"

.field private static final RC_SIGNIN:I = 0x2331

.field private static theFragment:Lcom/google/googlesignin/GoogleSignInFragment;


# instance fields
.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private request:Lcom/google/googlesignin/TokenRequest;

.field private state:Lcom/google/googlesignin/GoogleSignInFragment$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->request:Lcom/google/googlesignin/TokenRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/google/googlesignin/GoogleSignInFragment;)Lcom/google/googlesignin/TokenRequest;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->request:Lcom/google/googlesignin/TokenRequest;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/googlesignin/GoogleSignInFragment;Lcom/google/googlesignin/GoogleSignInFragment$State;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/googlesignin/GoogleSignInFragment;->setState(Lcom/google/googlesignin/GoogleSignInFragment$State;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/googlesignin/GoogleSignInFragment;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/googlesignin/GoogleSignInFragment;->clearRequest(Z)V

    return-void
.end method

.method private buildClient(Lcom/google/googlesignin/TokenRequest;)V
    .locals 10

    .line 340
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getUseGamesConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Using DEFAULT_GAMES_SIGN_IN"

    .line 341
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    .line 342
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    goto :goto_0

    :cond_0
    const-string v0, "Using DEFAULT_SIGN_IN"

    .line 344
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    .line 345
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 348
    :goto_0
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getDoAuthCode()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xa

    const-string v4, "Web client ID is needed for Auth Code"

    if-eqz v1, :cond_2

    .line 349
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getWebClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting AuthCode force = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getForceRefresh()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "client: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getWebClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {v1}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getWebClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getForceRefresh()Z

    move-result v5

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestServerAuthCode(Ljava/lang/String;Z)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    goto :goto_1

    .line 357
    :cond_1
    invoke-static {v4}, Lcom/google/googlesignin/GoogleSignInHelper;->logError(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1, v3, v2}, Lcom/google/googlesignin/TokenRequest;->setResult(ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 359
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 363
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getDoEmail()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Requesting email"

    .line 364
    invoke-static {v1}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 368
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getDoIdToken()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 369
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getWebClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting IDToken  client: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getWebClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getWebClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    goto :goto_2

    :cond_4
    const-string v0, "Web client ID is needed for ID Token"

    .line 374
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logError(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p1, v3, v2}, Lcom/google/googlesignin/TokenRequest;->setResult(ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 376
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 379
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getScopes()[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    .line 380
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getScopes()[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    move v6, v4

    :goto_3
    if-ge v6, v5, :cond_6

    aget-object v7, v1, v6

    .line 381
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding scope: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    .line 383
    new-instance v8, Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v8, v7}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-array v7, v4, [Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v8, v7}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 387
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getHidePopups()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getUseGamesConfig()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "hiding popup views for games API"

    .line 388
    invoke-static {v1}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->getGamesExtension()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->addExtension(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 395
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getAccountName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting accountName: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 401
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 403
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 404
    invoke-virtual {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/auth/api/Auth;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v1, v5, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 405
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getUseGamesConfig()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "Adding games API"

    .line 406
    invoke-static {v1}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    .line 409
    :try_start_0
    invoke-direct {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->getGamesAPI()Lcom/google/android/gms/common/api/Api;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getting Games API: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logError(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p1, v3, v2}, Lcom/google/googlesignin/TokenRequest;->setResult(ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void

    .line 416
    :cond_9
    :goto_4
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->getHidePopups()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 417
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x4

    .line 418
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 419
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 420
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 422
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/googlesignin/GoogleSignInFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v0, 0x2

    .line 423
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect(I)V

    return-void
.end method

.method private declared-synchronized clearRequest(Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 549
    :try_start_0
    iget-object p1, p0, Lcom/google/googlesignin/GoogleSignInFragment;->request:Lcom/google/googlesignin/TokenRequest;

    if-eqz p1, :cond_0

    .line 551
    invoke-virtual {p1}, Lcom/google/googlesignin/TokenRequest;->cancel()V

    :cond_0
    const/4 p1, 0x0

    .line 553
    iput-object p1, p0, Lcom/google/googlesignin/GoogleSignInFragment;->request:Lcom/google/googlesignin/TokenRequest;

    .line 554
    invoke-virtual {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/googlesignin/GoogleSignInFragment$State;->READY:Lcom/google/googlesignin/GoogleSignInFragment$State;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/googlesignin/GoogleSignInFragment$State;->NEW:Lcom/google/googlesignin/GoogleSignInFragment$State;

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/googlesignin/GoogleSignInFragment;->setState(Lcom/google/googlesignin/GoogleSignInFragment$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getGamesAPI()Lcom/google/android/gms/common/api/Api;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api<",
            "+",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions;",
            ">;"
        }
    .end annotation

    const-string v0, "Games API requested, but can\'t load Games API field"

    :try_start_0
    const-string v1, "com.google.android.gms.games.Games"

    .line 428
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "API"

    .line 429
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 430
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 437
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 434
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    .line 432
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Games API requested, but can\'t load Games class"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getGamesExtension()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;
    .locals 8

    const-string v0, "Games API requested, butcan\'t invoke builder() static method."

    :try_start_0
    const-string v1, "com.google.android.gms.games.Games$GamesOptions"

    .line 450
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "builder()"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 452
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 454
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 456
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setShowConnectingPopup"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    .line 458
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "build"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 461
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 473
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 470
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    .line 467
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Games API requested, butcan\'t find builder() static method."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    .line 464
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Games API requested, butcan\'t load Games$GamesOptions class"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/google/googlesignin/GoogleSignInFragment;
    .locals 2

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "signin.SignInFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/googlesignin/GoogleSignInFragment;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    sget-object v0, Lcom/google/googlesignin/GoogleSignInFragment;->theFragment:Lcom/google/googlesignin/GoogleSignInFragment;

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Creating fragment"

    .line 162
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    .line 163
    new-instance v0, Lcom/google/googlesignin/GoogleSignInFragment;

    invoke-direct {v0}, Lcom/google/googlesignin/GoogleSignInFragment;-><init>()V

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 165
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 166
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 167
    sput-object v0, Lcom/google/googlesignin/GoogleSignInFragment;->theFragment:Lcom/google/googlesignin/GoogleSignInFragment;

    :cond_1
    return-object v0
.end method

.method private declared-synchronized getState()Lcom/google/googlesignin/GoogleSignInFragment$State;
    .locals 1

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->state:Lcom/google/googlesignin/GoogleSignInFragment$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private processRequest(Z)V
    .locals 3

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->request:Lcom/google/googlesignin/TokenRequest;

    if-eqz v0, :cond_2

    .line 261
    sget-object v0, Lcom/google/googlesignin/GoogleSignInFragment$State;->BUSY:Lcom/google/googlesignin/GoogleSignInFragment$State;

    invoke-direct {p0, v0}, Lcom/google/googlesignin/GoogleSignInFragment;->setState(Lcom/google/googlesignin/GoogleSignInFragment$State;)V

    .line 267
    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->request:Lcom/google/googlesignin/TokenRequest;

    .line 268
    invoke-virtual {v0}, Lcom/google/googlesignin/TokenRequest;->getPendingResponse()Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/googlesignin/GoogleSignInFragment$2;

    invoke-direct {v1, p0}, Lcom/google/googlesignin/GoogleSignInFragment$2;-><init>(Lcom/google/googlesignin/GoogleSignInFragment;)V

    .line 269
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 289
    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->request:Lcom/google/googlesignin/TokenRequest;

    invoke-direct {p0, v0}, Lcom/google/googlesignin/GoogleSignInFragment;->buildClient(Lcom/google/googlesignin/TokenRequest;)V

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Has connected == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlesignin/GoogleSignInFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/Api;

    .line 292
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 296
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x2331

    .line 297
    invoke-virtual {p0, p1, v0}, Lcom/google/googlesignin/GoogleSignInFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 299
    :cond_0
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->silentSignIn(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/OptionalPendingResult;

    move-result-object p1

    new-instance v0, Lcom/google/googlesignin/GoogleSignInFragment$3;

    invoke-direct {v0, p0}, Lcom/google/googlesignin/GoogleSignInFragment$3;-><init>(Lcom/google/googlesignin/GoogleSignInFragment;)V

    .line 300
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/OptionalPendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    const-string p1, "Done with processRequest!"

    .line 329
    invoke-static {p1}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_1
    const-string p1, "No pending configuration, returning"

    .line 263
    invoke-static {p1}, Lcom/google/googlesignin/GoogleSignInHelper;->logInfo(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception caught! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/googlesignin/GoogleSignInHelper;->logError(Ljava/lang/String;)V

    .line 325
    iget-object p1, p0, Lcom/google/googlesignin/GoogleSignInFragment;->request:Lcom/google/googlesignin/TokenRequest;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/googlesignin/TokenRequest;->setResult(ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method

.method private processWhenReady(Z)V
    .locals 1

    const-string v0, "Fragment not initialized yet, waiting to authenticate"

    .line 250
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logInfo(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 251
    sget-object p1, Lcom/google/googlesignin/GoogleSignInFragment$State;->PENDING_SILENT:Lcom/google/googlesignin/GoogleSignInFragment$State;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/googlesignin/GoogleSignInFragment$State;->PENDING:Lcom/google/googlesignin/GoogleSignInFragment$State;

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/googlesignin/GoogleSignInFragment;->setState(Lcom/google/googlesignin/GoogleSignInFragment$State;)V

    return-void
.end method

.method private declared-synchronized setState(Lcom/google/googlesignin/GoogleSignInFragment$State;)V
    .locals 0

    monitor-enter p0

    .line 187
    :try_start_0
    iput-object p1, p0, Lcom/google/googlesignin/GoogleSignInFragment;->state:Lcom/google/googlesignin/GoogleSignInFragment$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    const/16 v0, 0x2331

    if-ne p1, v0, :cond_3

    .line 528
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {p1, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p1

    .line 529
    iget-object p3, p0, Lcom/google/googlesignin/GoogleSignInFragment;->request:Lcom/google/googlesignin/TokenRequest;

    if-eqz p3, :cond_2

    if-nez p1, :cond_1

    if-ltz p2, :cond_0

    const/16 p2, 0xd

    :cond_0
    const/4 p1, 0x0

    .line 534
    invoke-virtual {p3, p2, p1}, Lcom/google/googlesignin/TokenRequest;->setResult(ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    const-string p1, "GoogleSignIn result is null, returning error."

    .line 535
    invoke-static {p1}, Lcom/google/googlesignin/GoogleSignInHelper;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 537
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p2

    .line 538
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    invoke-virtual {p3, p1, p2}, Lcom/google/googlesignin/TokenRequest;->setResult(ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    goto :goto_0

    :cond_2
    const-string p1, "Pending request is null, can\'t return result!"

    .line 541
    invoke-static {p1}, Lcom/google/googlesignin/GoogleSignInHelper;->logError(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 545
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "onConnected!"

    .line 61
    invoke-static {p1}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/google/googlesignin/GoogleSignInFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "has connected auth!"

    .line 63
    invoke-static {p1}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    .line 64
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->silentSignIn(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/OptionalPendingResult;

    move-result-object p1

    new-instance v0, Lcom/google/googlesignin/GoogleSignInFragment$1;

    invoke-direct {v0, p0}, Lcom/google/googlesignin/GoogleSignInFragment$1;-><init>(Lcom/google/googlesignin/GoogleSignInFragment;)V

    .line 65
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/OptionalPendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 89
    :cond_0
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x2331

    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/google/googlesignin/GoogleSignInFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logError(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x2331

    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/google/googlesignin/GoogleSignInFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->request:Lcom/google/googlesignin/TokenRequest;

    .line 112
    invoke-virtual {v0}, Lcom/google/googlesignin/TokenRequest;->getHandle()J

    move-result-wide v0

    .line 113
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p1

    const/4 v2, 0x0

    .line 111
    invoke-static {v0, v1, p1, v2}, Lcom/google/googlesignin/GoogleSignInHelper;->nativeOnResult(JILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    :goto_0
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionSuspended() called: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "onResume called"

    .line 496
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    .line 497
    sget-object v0, Lcom/google/googlesignin/GoogleSignInFragment;->theFragment:Lcom/google/googlesignin/GoogleSignInFragment;

    if-eq v0, p0, :cond_0

    .line 498
    sput-object p0, Lcom/google/googlesignin/GoogleSignInFragment;->theFragment:Lcom/google/googlesignin/GoogleSignInFragment;

    .line 500
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 501
    invoke-direct {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->getState()Lcom/google/googlesignin/GoogleSignInFragment$State;

    move-result-object v0

    sget-object v1, Lcom/google/googlesignin/GoogleSignInFragment$State;->PENDING:Lcom/google/googlesignin/GoogleSignInFragment$State;

    if-ne v0, v1, :cond_1

    const-string v0, "State is pending, calling processRequest(false)"

    .line 502
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 503
    invoke-direct {p0, v0}, Lcom/google/googlesignin/GoogleSignInFragment;->processRequest(Z)V

    goto :goto_0

    .line 504
    :cond_1
    invoke-direct {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->getState()Lcom/google/googlesignin/GoogleSignInFragment$State;

    move-result-object v0

    sget-object v1, Lcom/google/googlesignin/GoogleSignInFragment$State;->PENDING_SILENT:Lcom/google/googlesignin/GoogleSignInFragment$State;

    if-ne v0, v1, :cond_2

    const-string v0, "State is pending_silent, calling processRequest(true)"

    .line 505
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 506
    invoke-direct {p0, v0}, Lcom/google/googlesignin/GoogleSignInFragment;->processRequest(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "State is now ready"

    .line 508
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logDebug(Ljava/lang/String;)V

    .line 509
    sget-object v0, Lcom/google/googlesignin/GoogleSignInFragment$State;->READY:Lcom/google/googlesignin/GoogleSignInFragment$State;

    invoke-direct {p0, v0}, Lcom/google/googlesignin/GoogleSignInFragment;->setState(Lcom/google/googlesignin/GoogleSignInFragment$State;)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 480
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 485
    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 486
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect(I)V

    :cond_0
    return-void
.end method

.method public signOut()V
    .locals 2

    const/4 v0, 0x1

    .line 196
    invoke-direct {p0, v0}, Lcom/google/googlesignin/GoogleSignInFragment;->clearRequest(Z)V

    .line 197
    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v1, p0, Lcom/google/googlesignin/GoogleSignInFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
    return-void
.end method

.method public startSignIn()Z
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->request:Lcom/google/googlesignin/TokenRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Request not configured! Failing authenticate"

    .line 210
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logError(Ljava/lang/String;)V

    return v1

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->getState()Lcom/google/googlesignin/GoogleSignInFragment$State;

    move-result-object v0

    sget-object v2, Lcom/google/googlesignin/GoogleSignInFragment$State;->BUSY:Lcom/google/googlesignin/GoogleSignInFragment$State;

    if-ne v0, v2, :cond_1

    const-string v0, "There is already a pending callback configured."

    .line 214
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-direct {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->getState()Lcom/google/googlesignin/GoogleSignInFragment$State;

    move-result-object v0

    sget-object v2, Lcom/google/googlesignin/GoogleSignInFragment$State;->READY:Lcom/google/googlesignin/GoogleSignInFragment$State;

    if-ne v0, v2, :cond_2

    .line 216
    invoke-direct {p0, v1}, Lcom/google/googlesignin/GoogleSignInFragment;->processRequest(Z)V

    goto :goto_0

    .line 218
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/googlesignin/GoogleSignInFragment;->processWhenReady(Z)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public startSignInSilently()Z
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->request:Lcom/google/googlesignin/TokenRequest;

    if-nez v0, :cond_0

    const-string v0, "Request not configured! Failing authenticate"

    .line 230
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logError(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->getState()Lcom/google/googlesignin/GoogleSignInFragment$State;

    move-result-object v0

    sget-object v1, Lcom/google/googlesignin/GoogleSignInFragment$State;->BUSY:Lcom/google/googlesignin/GoogleSignInFragment$State;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "There is already a pending callback configured."

    .line 234
    invoke-static {v0}, Lcom/google/googlesignin/GoogleSignInHelper;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-direct {p0}, Lcom/google/googlesignin/GoogleSignInFragment;->getState()Lcom/google/googlesignin/GoogleSignInFragment$State;

    move-result-object v0

    sget-object v1, Lcom/google/googlesignin/GoogleSignInFragment$State;->READY:Lcom/google/googlesignin/GoogleSignInFragment$State;

    if-ne v0, v1, :cond_2

    .line 236
    invoke-direct {p0, v2}, Lcom/google/googlesignin/GoogleSignInFragment;->processRequest(Z)V

    goto :goto_0

    .line 238
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/googlesignin/GoogleSignInFragment;->processWhenReady(Z)V

    :goto_0
    return v2
.end method

.method public declared-synchronized submitRequest(Lcom/google/googlesignin/TokenRequest;)Z
    .locals 6

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->request:Lcom/google/googlesignin/TokenRequest;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlesignin/GoogleSignInFragment;->state:Lcom/google/googlesignin/GoogleSignInFragment$State;

    sget-object v2, Lcom/google/googlesignin/GoogleSignInFragment$State;->READY:Lcom/google/googlesignin/GoogleSignInFragment$State;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v2, "Existing request: %s ignoring %s.  State = %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/googlesignin/GoogleSignInFragment;->request:Lcom/google/googlesignin/TokenRequest;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    aput-object p1, v3, v1

    const/4 p1, 0x2

    iget-object v1, p0, Lcom/google/googlesignin/GoogleSignInFragment;->state:Lcom/google/googlesignin/GoogleSignInFragment$State;

    aput-object v1, v3, p1

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/googlesignin/GoogleSignInHelper;->logError(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return v5

    .line 174
    :cond_1
    :goto_0
    :try_start_1
    iput-object p1, p0, Lcom/google/googlesignin/GoogleSignInFragment;->request:Lcom/google/googlesignin/TokenRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
