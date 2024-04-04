.class public Lcom/facebook/unity/FBUnityJoinGameGroupActivity;
.super Lcom/facebook/unity/BaseActivity;
.source "FBUnityJoinGameGroupActivity.java"


# static fields
.field public static JOIN_GAME_GROUP_PARAMS:Ljava/lang/String; = "join_game_group_params"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/facebook/unity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 34
    invoke-super {p0, p1}, Lcom/facebook/unity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityJoinGameGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/facebook/unity/FBUnityJoinGameGroupActivity;->JOIN_GAME_GROUP_PARAMS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 37
    new-instance v0, Lcom/facebook/unity/UnityMessage;

    const-string v1, "OnJoinGroupComplete"

    invoke-direct {v0, v1}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "callback_id"

    .line 38
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    :cond_0
    const-string v1, "id"

    .line 43
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 47
    :goto_0
    new-instance v1, Lcom/facebook/share/widget/JoinAppGroupDialog;

    invoke-direct {v1, p0}, Lcom/facebook/share/widget/JoinAppGroupDialog;-><init>(Landroid/app/Activity;)V

    .line 48
    iget-object v2, p0, Lcom/facebook/unity/FBUnityJoinGameGroupActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/facebook/unity/FBUnityJoinGameGroupActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/facebook/unity/FBUnityJoinGameGroupActivity$1;-><init>(Lcom/facebook/unity/FBUnityJoinGameGroupActivity;Lcom/facebook/unity/UnityMessage;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/share/widget/JoinAppGroupDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 66
    invoke-virtual {v1, p1}, Lcom/facebook/share/widget/JoinAppGroupDialog;->show(Ljava/lang/Object;)V

    return-void
.end method
