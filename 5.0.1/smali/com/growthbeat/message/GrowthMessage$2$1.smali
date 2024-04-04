.class Lcom/growthbeat/message/GrowthMessage$2$1;
.super Ljava/lang/Object;
.source "GrowthMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/message/GrowthMessage$2;->complete(Lcom/growthbeat/message/handler/ShowMessageHandler$MessageRenderHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/growthbeat/message/GrowthMessage$2;


# direct methods
.method constructor <init>(Lcom/growthbeat/message/GrowthMessage$2;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/growthbeat/message/GrowthMessage$2$1;->this$1:Lcom/growthbeat/message/GrowthMessage$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 164
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/Growthbeat;->waitClient()Lcom/growthbeat/model/Client;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/growthbeat/model/Client;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/growthbeat/message/GrowthMessage$2$1;->this$1:Lcom/growthbeat/message/GrowthMessage$2;

    iget-object v1, v1, Lcom/growthbeat/message/GrowthMessage$2;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v1}, Lcom/growthbeat/message/GrowthMessage;->access$100(Lcom/growthbeat/message/GrowthMessage;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/growthbeat/message/GrowthMessage$2$1;->this$1:Lcom/growthbeat/message/GrowthMessage$2;

    iget-object v2, v2, Lcom/growthbeat/message/GrowthMessage$2;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v2}, Lcom/growthbeat/message/GrowthMessage;->access$200(Lcom/growthbeat/message/GrowthMessage;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/growthbeat/message/GrowthMessage$2$1;->this$1:Lcom/growthbeat/message/GrowthMessage$2;

    iget-object v3, v3, Lcom/growthbeat/message/GrowthMessage$2;->val$messageJob:Lcom/growthbeat/message/MessageQueue;

    .line 166
    invoke-virtual {v3}, Lcom/growthbeat/message/MessageQueue;->getMessage()Lcom/growthbeat/message/model/Message;

    move-result-object v3

    invoke-virtual {v3}, Lcom/growthbeat/message/model/Message;->getTask()Lcom/growthbeat/message/model/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/growthbeat/message/model/Task;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/growthbeat/message/GrowthMessage$2$1;->this$1:Lcom/growthbeat/message/GrowthMessage$2;

    iget-object v4, v4, Lcom/growthbeat/message/GrowthMessage$2;->val$messageJob:Lcom/growthbeat/message/MessageQueue;

    invoke-virtual {v4}, Lcom/growthbeat/message/MessageQueue;->getMessage()Lcom/growthbeat/message/model/Message;

    move-result-object v4

    invoke-virtual {v4}, Lcom/growthbeat/message/model/Message;->getId()Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-static {v0, v1, v2, v3, v4}, Lcom/growthbeat/message/model/ShowMessageCount;->receiveCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/growthbeat/message/model/ShowMessageCount;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/growthbeat/message/GrowthMessage$2$1;->this$1:Lcom/growthbeat/message/GrowthMessage$2;

    iget-object v1, v1, Lcom/growthbeat/message/GrowthMessage$2;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v1}, Lcom/growthbeat/message/GrowthMessage;->access$000(Lcom/growthbeat/message/GrowthMessage;)Lcom/growthbeat/Logger;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/growthbeat/message/model/ShowMessageCount;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "Success show message (count : %d)"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    return-void
.end method
