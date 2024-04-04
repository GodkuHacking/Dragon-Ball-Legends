.class Lcom/growthbeat/message/GrowthMessage$3;
.super Ljava/lang/Object;
.source "GrowthMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/message/GrowthMessage;->openMessageIfExists()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthbeat/message/GrowthMessage;


# direct methods
.method constructor <init>(Lcom/growthbeat/message/GrowthMessage;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/growthbeat/message/GrowthMessage$3;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage$3;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v0}, Lcom/growthbeat/message/GrowthMessage;->access$600(Lcom/growthbeat/message/GrowthMessage;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/growthbeat/message/GrowthMessage$3;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v2}, Lcom/growthbeat/message/GrowthMessage;->access$700(Lcom/growthbeat/message/GrowthMessage;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 221
    iget-object v2, p0, Lcom/growthbeat/message/GrowthMessage$3;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v2}, Lcom/growthbeat/message/GrowthMessage;->access$800(Lcom/growthbeat/message/GrowthMessage;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage$3;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v0}, Lcom/growthbeat/message/GrowthMessage;->access$600(Lcom/growthbeat/message/GrowthMessage;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    .line 225
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage$3;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v0}, Lcom/growthbeat/message/GrowthMessage;->access$400(Lcom/growthbeat/message/GrowthMessage;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/growthbeat/message/MessageQueue;

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage$3;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v0}, Lcom/growthbeat/message/GrowthMessage;->access$000(Lcom/growthbeat/message/GrowthMessage;)Lcom/growthbeat/Logger;

    move-result-object v0

    const-string v1, "Empty message queue."

    invoke-virtual {v0, v1}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/growthbeat/message/GrowthMessage$3;->this$0:Lcom/growthbeat/message/GrowthMessage;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/growthbeat/message/GrowthMessage;->access$802(Lcom/growthbeat/message/GrowthMessage;Z)Z

    .line 233
    iget-object v1, p0, Lcom/growthbeat/message/GrowthMessage$3;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v1}, Lcom/growthbeat/message/GrowthMessage;->access$000(Lcom/growthbeat/message/GrowthMessage;)Lcom/growthbeat/Logger;

    move-result-object v1

    const-string v3, "Show Message for %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/growthbeat/message/MessageQueue;->getMessage()Lcom/growthbeat/message/model/Message;

    move-result-object v5

    invoke-virtual {v5}, Lcom/growthbeat/message/model/Message;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 234
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/growthbeat/message/GrowthMessage$3$1;

    invoke-direct {v2, p0, v0}, Lcom/growthbeat/message/GrowthMessage$3$1;-><init>(Lcom/growthbeat/message/GrowthMessage$3;Lcom/growthbeat/message/MessageQueue;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage$3;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/growthbeat/message/GrowthMessage;->access$702(Lcom/growthbeat/message/GrowthMessage;J)J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 244
    iget-object v1, p0, Lcom/growthbeat/message/GrowthMessage$3;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v1}, Lcom/growthbeat/message/GrowthMessage;->access$600(Lcom/growthbeat/message/GrowthMessage;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 245
    throw v0

    .line 244
    :catch_0
    :goto_1
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage$3;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-static {v0}, Lcom/growthbeat/message/GrowthMessage;->access$600(Lcom/growthbeat/message/GrowthMessage;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
