.class public Lcom/adjust/sdk/AdjustPreinstallReferrerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdjustPreinstallReferrerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "com.attribution.EXTRA_SYSTEM_INSTALLER_REFERRER"

    .line 17
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 22
    :cond_1
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/adjust/sdk/AdjustInstance;->sendPreinstallReferrer(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
