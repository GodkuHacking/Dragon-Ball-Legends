.class public Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity;
.super Lcom/facebook/unity/BaseActivity;
.source "FBUnityGamingServicesFriendFinderActivity.java"


# static fields
.field public static final DIALOG_PARAMS:Ljava/lang/String; = "dialog_params"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/facebook/unity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 37
    invoke-super {p0, p1}, Lcom/facebook/unity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "dialog_params"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 42
    new-instance v0, Lcom/facebook/unity/UnityMessage;

    const-string v1, "OnFriendFinderComplete"

    invoke-direct {v0, v1}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "callback_id"

    .line 43
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    sget-object v2, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callbackID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {v0, v1, p1}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 49
    :cond_0
    new-instance p1, Lcom/facebook/gamingservices/FriendFinderDialog;

    invoke-direct {p1, p0}, Lcom/facebook/gamingservices/FriendFinderDialog;-><init>(Landroid/app/Activity;)V

    .line 50
    iget-object v1, p0, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity$1;-><init>(Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity;Lcom/facebook/unity/UnityMessage;)V

    invoke-virtual {p1, v1, v2}, Lcom/facebook/gamingservices/FriendFinderDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 71
    invoke-virtual {p1}, Lcom/facebook/gamingservices/FriendFinderDialog;->show()V

    return-void
.end method
