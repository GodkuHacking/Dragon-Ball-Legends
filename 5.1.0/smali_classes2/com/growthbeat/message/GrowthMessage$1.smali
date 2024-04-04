.class Lcom/growthbeat/message/GrowthMessage$1;
.super Ljava/lang/Object;
.source "GrowthMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/message/GrowthMessage;->receiveMessage(ILjava/lang/String;Lcom/growthbeat/message/handler/ShowMessageHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthbeat/message/GrowthMessage;

.field final synthetic val$clientId:Ljava/lang/String;

.field final synthetic val$goalId:I

.field final synthetic val$handler:Lcom/growthbeat/message/handler/ShowMessageHandler;


# direct methods
.method constructor <init>(Lcom/growthbeat/message/GrowthMessage;ILcom/growthbeat/message/handler/ShowMessageHandler;Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/growthbeat/message/GrowthMessage$1;->this$0:Lcom/growthbeat/message/GrowthMessage;

    iput p2, p0, Lcom/growthbeat/message/GrowthMessage$1;->val$goalId:I

    iput-object p3, p0, Lcom/growthbeat/message/GrowthMessage$1;->val$handler:Lcom/growthbeat/message/handler/ShowMessageHandler;

    iput-object p4, p0, Lcom/growthbeat/message/GrowthMessage$1;->val$clientId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 93
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage$1;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v0}, Lcom/growthbeat/message/GrowthMessage;->access$000(Lcom/growthbeat/message/GrowthMessage;)Lcom/growthbeat/Logger;

    move-result-object v0

    const-string v1, "Receive message..."

    invoke-virtual {v0, v1}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 98
    :try_start_0
    iget-object v4, p0, Lcom/growthbeat/message/GrowthMessage$1;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v4}, Lcom/growthbeat/message/GrowthMessage;->access$100(Lcom/growthbeat/message/GrowthMessage;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/growthbeat/message/GrowthMessage$1;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v5}, Lcom/growthbeat/message/GrowthMessage;->access$200(Lcom/growthbeat/message/GrowthMessage;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/growthbeat/message/GrowthMessage$1;->val$goalId:I

    invoke-static {v4, v5, v6}, Lcom/growthbeat/message/model/Task;->getTasks(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 99
    iget-object v4, p0, Lcom/growthbeat/message/GrowthMessage$1;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v4}, Lcom/growthbeat/message/GrowthMessage;->access$000(Lcom/growthbeat/message/GrowthMessage;)Lcom/growthbeat/Logger;

    move-result-object v4

    const-string v5, "Task exist %d for goalId : %d"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v7, p0, Lcom/growthbeat/message/GrowthMessage$1;->val$goalId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 100
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    iget-object v4, p0, Lcom/growthbeat/message/GrowthMessage$1;->val$handler:Lcom/growthbeat/message/handler/ShowMessageHandler;

    if-eqz v4, :cond_0

    const-string v5, "Task is not available."

    .line 102
    invoke-interface {v4, v5}, Lcom/growthbeat/message/handler/ShowMessageHandler;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/growthbeat/GrowthbeatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v4

    .line 107
    iget-object v5, p0, Lcom/growthbeat/message/GrowthMessage$1;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v5}, Lcom/growthbeat/message/GrowthMessage;->access$000(Lcom/growthbeat/message/GrowthMessage;)Lcom/growthbeat/Logger;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/growthbeat/GrowthbeatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    const-string v4, "Failed to get tasks. %s"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 108
    iget-object v4, p0, Lcom/growthbeat/message/GrowthMessage$1;->val$handler:Lcom/growthbeat/message/handler/ShowMessageHandler;

    if-eqz v4, :cond_1

    const-string v0, "Failed to get tasks."

    .line 109
    invoke-interface {v4, v0}, Lcom/growthbeat/message/handler/ShowMessageHandler;->error(Ljava/lang/String;)V

    return-void

    .line 114
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    iget-object v5, p0, Lcom/growthbeat/message/GrowthMessage$1;->val$handler:Lcom/growthbeat/message/handler/ShowMessageHandler;

    if-eqz v5, :cond_2

    .line 116
    iget-object v5, p0, Lcom/growthbeat/message/GrowthMessage$1;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v5}, Lcom/growthbeat/message/GrowthMessage;->access$300(Lcom/growthbeat/message/GrowthMessage;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/growthbeat/message/GrowthMessage$1;->val$handler:Lcom/growthbeat/message/handler/ShowMessageHandler;

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/growthbeat/message/model/Task;

    .line 121
    :try_start_1
    invoke-virtual {v5}, Lcom/growthbeat/message/model/Task;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/growthbeat/message/GrowthMessage$1;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v6}, Lcom/growthbeat/message/GrowthMessage;->access$100(Lcom/growthbeat/message/GrowthMessage;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/growthbeat/message/GrowthMessage$1;->val$clientId:Ljava/lang/String;

    iget-object v8, p0, Lcom/growthbeat/message/GrowthMessage$1;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v8}, Lcom/growthbeat/message/GrowthMessage;->access$200(Lcom/growthbeat/message/GrowthMessage;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/growthbeat/message/model/Message;->receive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/growthbeat/message/model/Message;

    move-result-object v5

    .line 122
    instance-of v6, v5, Lcom/growthbeat/message/model/NoContentMessage;

    if-eqz v6, :cond_4

    .line 123
    iget-object v5, p0, Lcom/growthbeat/message/GrowthMessage$1;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v5}, Lcom/growthbeat/message/GrowthMessage;->access$000(Lcom/growthbeat/message/GrowthMessage;)Lcom/growthbeat/Logger;

    move-result-object v5

    const-string v6, "this message is not target client."

    invoke-virtual {v5, v6}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_3

    .line 128
    iget-object v6, p0, Lcom/growthbeat/message/GrowthMessage$1;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v6}, Lcom/growthbeat/message/GrowthMessage;->access$400(Lcom/growthbeat/message/GrowthMessage;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v6

    new-instance v7, Lcom/growthbeat/message/MessageQueue;

    invoke-direct {v7, v4, v5}, Lcom/growthbeat/message/MessageQueue;-><init>(Ljava/lang/String;Lcom/growthbeat/message/model/Message;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/growthbeat/GrowthbeatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    .line 131
    invoke-virtual {v5}, Lcom/growthbeat/GrowthbeatException;->getCode()I

    move-result v6

    const/16 v7, 0x64b

    if-eq v6, v7, :cond_5

    packed-switch v6, :pswitch_data_0

    .line 139
    iget-object v6, p0, Lcom/growthbeat/message/GrowthMessage$1;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v6}, Lcom/growthbeat/message/GrowthMessage;->access$000(Lcom/growthbeat/message/GrowthMessage;)Lcom/growthbeat/Logger;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/growthbeat/GrowthbeatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5}, Lcom/growthbeat/GrowthbeatException;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v3

    const-string v5, "Failed to get messages. %s, code: %d"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_5
    :pswitch_0
    iget-object v6, p0, Lcom/growthbeat/message/GrowthMessage$1;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v6}, Lcom/growthbeat/message/GrowthMessage;->access$000(Lcom/growthbeat/message/GrowthMessage;)Lcom/growthbeat/Logger;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/growthbeat/GrowthbeatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5}, Lcom/growthbeat/GrowthbeatException;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v3

    const-string v5, "%s, code: %d"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :cond_6
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage$1;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-virtual {v0}, Lcom/growthbeat/message/GrowthMessage;->openMessageIfExists()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6a5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
