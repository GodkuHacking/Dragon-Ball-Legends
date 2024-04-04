.class public Lcom/growthpush/handler/OnlyNotificationReceiveHandler;
.super Lcom/growthpush/handler/BaseReceiveHandler;
.source "OnlyNotificationReceiveHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/growthpush/handler/BaseReceiveHandler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/growthpush/handler/BaseReceiveHandler$Callback;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/growthpush/handler/OnlyNotificationReceiveHandler;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/growthpush/handler/OnlyNotificationReceiveHandler;->setCallback(Lcom/growthpush/handler/BaseReceiveHandler$Callback;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 20
    invoke-super {p0, p1, p2}, Lcom/growthpush/handler/BaseReceiveHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/growthpush/handler/OnlyNotificationReceiveHandler;->addNotification(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
