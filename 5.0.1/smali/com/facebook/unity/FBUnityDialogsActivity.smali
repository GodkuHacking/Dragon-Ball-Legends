.class public Lcom/facebook/unity/FBUnityDialogsActivity;
.super Lcom/facebook/unity/BaseActivity;
.source "FBUnityDialogsActivity.java"


# static fields
.field public static final DIALOG_TYPE:Ljava/lang/String; = "dialog_type"

.field public static final FEED_DIALOG_PARAMS:Ljava/lang/String; = "feed_dialog_params"

.field public static final SHARE_DIALOG_PARAMS:Ljava/lang/String; = "share_dialog_params"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/facebook/unity/FBUnityDialogsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/unity/FBUnityDialogsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/facebook/unity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 43
    invoke-super {p0, p1}, Lcom/facebook/unity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityDialogsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "share_dialog_params"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 50
    invoke-static {p1}, Lcom/facebook/unity/FBDialogUtils;->createShareContentBuilder(Landroid/os/Bundle;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "feed_dialog_params"

    .line 51
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 53
    invoke-static {p1}, Lcom/facebook/unity/FBDialogUtils;->createFeedContentBuilder(Landroid/os/Bundle;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->build()Lcom/facebook/share/internal/ShareFeedContent;

    move-result-object v0

    .line 65
    :goto_0
    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v1, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 66
    new-instance v2, Lcom/facebook/unity/UnityMessage;

    const-string v3, "OnShareLinkComplete"

    invoke-direct {v2, v3}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    const-string v3, "callback_id"

    .line 67
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {v2, v3, p1}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/facebook/unity/FBUnityDialogsActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/facebook/unity/FBUnityDialogsActivity$1;

    invoke-direct {v3, p0, v2}, Lcom/facebook/unity/FBUnityDialogsActivity$1;-><init>(Lcom/facebook/unity/FBUnityDialogsActivity;Lcom/facebook/unity/UnityMessage;)V

    invoke-virtual {v1, p1, v3}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 94
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityDialogsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "dialog_type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/widget/ShareDialog$Mode;

    .line 95
    invoke-virtual {v1, v0, p1}, Lcom/facebook/share/widget/ShareDialog;->show(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    return-void

    .line 55
    :cond_2
    sget-object p1, Lcom/facebook/unity/FBUnityDialogsActivity;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v0, "Failed to find extra %s or %s"

    .line 56
    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityDialogsActivity;->finish()V

    return-void
.end method
