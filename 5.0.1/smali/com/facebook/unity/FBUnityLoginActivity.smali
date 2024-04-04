.class public Lcom/facebook/unity/FBUnityLoginActivity;
.super Lcom/facebook/unity/BaseActivity;
.source "FBUnityLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/unity/FBUnityLoginActivity$LoginType;
    }
.end annotation


# static fields
.field public static final LOGIN_PARAMS:Ljava/lang/String; = "login_params"

.field public static final LOGIN_TYPE:Ljava/lang/String; = "login_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/facebook/unity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallbackManager()Lcom/facebook/CallbackManager;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/facebook/unity/FBUnityLoginActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Lcom/facebook/unity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "login_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    .line 37
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "login_params"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/facebook/unity/FBUnityLoginActivity$1;->$SwitchMap$com$facebook$unity$FBUnityLoginActivity$LoginType:[I

    invoke-virtual {p1}, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {v0, p0}, Lcom/facebook/unity/FBLogin;->loginForTVWithPublishPermissions(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {v0, p0}, Lcom/facebook/unity/FBLogin;->loginForTVWithReadPermissions(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;)V

    goto :goto_0

    .line 43
    :cond_2
    invoke-static {v0, p0}, Lcom/facebook/unity/FBLogin;->loginWithPublishPermissions(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;)V

    goto :goto_0

    .line 40
    :cond_3
    invoke-static {v0, p0}, Lcom/facebook/unity/FBLogin;->loginWithReadPermissions(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;)V

    :goto_0
    return-void
.end method
