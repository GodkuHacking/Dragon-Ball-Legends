.class Lcom/growthbeat/message/GrowthMessage$2;
.super Ljava/lang/Object;
.source "GrowthMessage.java"

# interfaces
.implements Lcom/growthbeat/message/handler/MessageHandler$MessageDonwloadHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/message/GrowthMessage;->openMessage(Lcom/growthbeat/message/MessageQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthbeat/message/GrowthMessage;

.field final synthetic val$messageJob:Lcom/growthbeat/message/MessageQueue;


# direct methods
.method constructor <init>(Lcom/growthbeat/message/GrowthMessage;Lcom/growthbeat/message/MessageQueue;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/growthbeat/message/GrowthMessage$2;->this$0:Lcom/growthbeat/message/GrowthMessage;

    iput-object p2, p0, Lcom/growthbeat/message/GrowthMessage$2;->val$messageJob:Lcom/growthbeat/message/MessageQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/growthbeat/message/handler/ShowMessageHandler$MessageRenderHandler;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage$2;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v0}, Lcom/growthbeat/message/GrowthMessage;->access$500(Lcom/growthbeat/message/GrowthMessage;)Lcom/growthbeat/GrowthbeatThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/growthbeat/message/GrowthMessage$2$1;

    invoke-direct {v1, p0}, Lcom/growthbeat/message/GrowthMessage$2$1;-><init>(Lcom/growthbeat/message/GrowthMessage$2;)V

    invoke-virtual {v0, v1}, Lcom/growthbeat/GrowthbeatThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 171
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage$2;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v0}, Lcom/growthbeat/message/GrowthMessage;->access$300(Lcom/growthbeat/message/GrowthMessage;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/growthbeat/message/GrowthMessage$2;->val$messageJob:Lcom/growthbeat/message/MessageQueue;

    invoke-virtual {v1}, Lcom/growthbeat/message/MessageQueue;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/growthbeat/message/handler/ShowMessageHandler;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, p1}, Lcom/growthbeat/message/handler/ShowMessageHandler;->complete(Lcom/growthbeat/message/handler/ShowMessageHandler$MessageRenderHandler;)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-interface {p1}, Lcom/growthbeat/message/handler/ShowMessageHandler$MessageRenderHandler;->render()V

    :goto_0
    return-void
.end method
