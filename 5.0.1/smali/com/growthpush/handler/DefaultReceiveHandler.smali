.class public Lcom/growthpush/handler/DefaultReceiveHandler;
.super Lcom/growthpush/handler/BaseReceiveHandler;
.source "DefaultReceiveHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/growthpush/handler/BaseReceiveHandler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/growthpush/handler/BaseReceiveHandler$Callback;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/growthpush/handler/DefaultReceiveHandler;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lcom/growthpush/handler/DefaultReceiveHandler;->setCallback(Lcom/growthpush/handler/BaseReceiveHandler$Callback;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lcom/growthpush/handler/BaseReceiveHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/growthpush/handler/DefaultReceiveHandler;->showAlert(Landroid/content/Context;Landroid/content/Intent;)V

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/growthpush/handler/DefaultReceiveHandler;->addNotification(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
