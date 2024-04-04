.class public Lcom/growthbeat/intenthandler/IntentReceiveActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "IntentReceiveActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 15
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Lcom/growthbeat/intenthandler/IntentReceiveActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 17
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/growthbeat/link/GrowthLink;->handleOpenUrl(Landroid/net/Uri;)V

    .line 18
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/unity3d/player/UnityPlayerProxyActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/growthbeat/intenthandler/IntentReceiveActivity;->startActivity(Landroid/content/Intent;)V

    .line 20
    invoke-virtual {p0}, Lcom/growthbeat/intenthandler/IntentReceiveActivity;->finish()V

    return-void
.end method
