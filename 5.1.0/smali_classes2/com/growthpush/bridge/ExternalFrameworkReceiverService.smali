.class public Lcom/growthpush/bridge/ExternalFrameworkReceiverService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "ExternalFrameworkReceiverService.java"


# instance fields
.field protected bridge:Lcom/growthpush/bridge/ExternalFrameworkBridge;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/growthpush/bridge/ExternalFrameworkReceiverService;->bridge:Lcom/growthpush/bridge/ExternalFrameworkBridge;

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 3

    .line 24
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 31
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthpush/GrowthPush;->getReceiveHandler()Lcom/growthpush/handler/ReceiveHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthpush/GrowthPush;->getReceiveHandler()Lcom/growthpush/handler/ReceiveHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/growthpush/handler/DefaultReceiveHandler;

    if-eqz v0, :cond_1

    .line 33
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthpush/GrowthPush;->getReceiveHandler()Lcom/growthpush/handler/ReceiveHandler;

    move-result-object v0

    check-cast v0, Lcom/growthpush/handler/DefaultReceiveHandler;

    .line 34
    new-instance v1, Lcom/growthpush/bridge/ExternalFrameworkReceiverService$1;

    invoke-direct {v1, p0}, Lcom/growthpush/bridge/ExternalFrameworkReceiverService$1;-><init>(Lcom/growthpush/bridge/ExternalFrameworkReceiverService;)V

    invoke-virtual {v0, v1}, Lcom/growthpush/handler/DefaultReceiveHandler;->setCallback(Lcom/growthpush/handler/BaseReceiveHandler$Callback;)V

    .line 44
    :cond_1
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthpush/GrowthPush;->getReceiveHandler()Lcom/growthpush/handler/ReceiveHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/growthpush/bridge/ExternalFrameworkReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/growthpush/handler/ReceiveHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
