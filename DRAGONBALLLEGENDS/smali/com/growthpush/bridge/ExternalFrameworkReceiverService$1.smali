.class Lcom/growthpush/bridge/ExternalFrameworkReceiverService$1;
.super Lcom/growthpush/handler/BaseReceiveHandler$Callback;
.source "ExternalFrameworkReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthpush/bridge/ExternalFrameworkReceiverService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthpush/bridge/ExternalFrameworkReceiverService;


# direct methods
.method constructor <init>(Lcom/growthpush/bridge/ExternalFrameworkReceiverService;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/growthpush/bridge/ExternalFrameworkReceiverService$1;->this$0:Lcom/growthpush/bridge/ExternalFrameworkReceiverService;

    invoke-direct {p0}, Lcom/growthpush/handler/BaseReceiveHandler$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpen(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/growthpush/handler/BaseReceiveHandler$Callback;->onOpen(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/growthpush/bridge/ExternalFrameworkReceiverService$1;->this$0:Lcom/growthpush/bridge/ExternalFrameworkReceiverService;

    iget-object p1, p1, Lcom/growthpush/bridge/ExternalFrameworkReceiverService;->bridge:Lcom/growthpush/bridge/ExternalFrameworkBridge;

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/growthpush/bridge/ExternalFrameworkReceiverService$1;->this$0:Lcom/growthpush/bridge/ExternalFrameworkReceiverService;

    iget-object p1, p1, Lcom/growthpush/bridge/ExternalFrameworkReceiverService;->bridge:Lcom/growthpush/bridge/ExternalFrameworkBridge;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/growthpush/bridge/ExternalFrameworkBridge;->callbackExternalFrameworkWithExtra(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
