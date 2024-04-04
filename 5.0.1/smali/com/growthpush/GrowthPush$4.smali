.class Lcom/growthpush/GrowthPush$4;
.super Ljava/lang/Object;
.source "GrowthPush.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthpush/GrowthPush;->trackEvent(Lcom/growthpush/model/Event$EventType;Ljava/lang/String;Ljava/lang/String;Lcom/growthbeat/message/handler/ShowMessageHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthpush/GrowthPush;

.field final synthetic val$handler:Lcom/growthbeat/message/handler/ShowMessageHandler;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$type:Lcom/growthpush/model/Event$EventType;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/growthpush/GrowthPush;Ljava/lang/String;Ljava/lang/String;Lcom/growthpush/model/Event$EventType;Lcom/growthbeat/message/handler/ShowMessageHandler;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/growthpush/GrowthPush$4;->this$0:Lcom/growthpush/GrowthPush;

    iput-object p2, p0, Lcom/growthpush/GrowthPush$4;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/growthpush/GrowthPush$4;->val$value:Ljava/lang/String;

    iput-object p4, p0, Lcom/growthpush/GrowthPush$4;->val$type:Lcom/growthpush/model/Event$EventType;

    iput-object p5, p0, Lcom/growthpush/GrowthPush$4;->val$handler:Lcom/growthbeat/message/handler/ShowMessageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 312
    iget-object v0, p0, Lcom/growthpush/GrowthPush$4;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v0}, Lcom/growthpush/GrowthPush;->access$900(Lcom/growthpush/GrowthPush;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/growthpush/GrowthPush$4;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v0}, Lcom/growthpush/GrowthPush;->access$000(Lcom/growthpush/GrowthPush;)Lcom/growthbeat/Logger;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/growthpush/GrowthPush$4;->val$name:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/growthpush/GrowthPush$4;->val$value:Ljava/lang/String;

    aput-object v2, v3, v1

    const-string v1, "trackEvent registering client timeout. (name: %s, value: %s)"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/growthbeat/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/growthpush/GrowthPush$4;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v0}, Lcom/growthpush/GrowthPush;->access$000(Lcom/growthpush/GrowthPush;)Lcom/growthbeat/Logger;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/growthpush/GrowthPush$4;->val$name:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/growthpush/GrowthPush$4;->val$value:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v5, "Sending event ... (name: %s, value: %s)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 319
    :try_start_0
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v0

    invoke-static {v0}, Lcom/growthpush/GrowthPush;->access$400(Lcom/growthpush/GrowthPush;)Lcom/growthpush/model/ClientV4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthpush/model/ClientV4;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/growthpush/GrowthPush$4;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v0}, Lcom/growthpush/GrowthPush;->access$1000(Lcom/growthpush/GrowthPush;)Ljava/lang/String;

    move-result-object v5

    .line 320
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v0

    invoke-static {v0}, Lcom/growthpush/GrowthPush;->access$1100(Lcom/growthpush/GrowthPush;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/growthpush/GrowthPush$4;->val$type:Lcom/growthpush/model/Event$EventType;

    iget-object v8, p0, Lcom/growthpush/GrowthPush$4;->val$name:Ljava/lang/String;

    iget-object v9, p0, Lcom/growthpush/GrowthPush$4;->val$value:Ljava/lang/String;

    .line 319
    invoke-static/range {v4 .. v9}, Lcom/growthpush/model/Event;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/growthpush/model/Event$EventType;Ljava/lang/String;Ljava/lang/String;)Lcom/growthpush/model/Event;

    move-result-object v0

    .line 321
    iget-object v4, p0, Lcom/growthpush/GrowthPush$4;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v4}, Lcom/growthpush/GrowthPush;->access$000(Lcom/growthpush/GrowthPush;)Lcom/growthbeat/Logger;

    move-result-object v4

    const-string v5, "Sending event success. (name: %s, value: %s)"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/growthpush/GrowthPush$4;->val$name:Ljava/lang/String;

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/growthpush/GrowthPush$4;->val$value:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 323
    iget-object v4, p0, Lcom/growthpush/GrowthPush$4;->val$type:Lcom/growthpush/model/Event$EventType;

    sget-object v5, Lcom/growthpush/model/Event$EventType;->message:Lcom/growthpush/model/Event$EventType;

    if-eq v4, v5, :cond_1

    .line 324
    invoke-static {}, Lcom/growthbeat/message/GrowthMessage;->getInstance()Lcom/growthbeat/message/GrowthMessage;

    move-result-object v4

    invoke-virtual {v0}, Lcom/growthpush/model/Event;->getGoalId()I

    move-result v0

    iget-object v5, p0, Lcom/growthpush/GrowthPush$4;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v5}, Lcom/growthpush/GrowthPush;->access$400(Lcom/growthpush/GrowthPush;)Lcom/growthpush/model/ClientV4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/growthpush/model/ClientV4;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/growthpush/GrowthPush$4;->val$handler:Lcom/growthbeat/message/handler/ShowMessageHandler;

    invoke-virtual {v4, v0, v5, v6}, Lcom/growthbeat/message/GrowthMessage;->receiveMessage(ILjava/lang/String;Lcom/growthbeat/message/handler/ShowMessageHandler;)V
    :try_end_0
    .catch Lcom/growthpush/GrowthPushException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 327
    iget-object v4, p0, Lcom/growthpush/GrowthPush$4;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v4}, Lcom/growthpush/GrowthPush;->access$000(Lcom/growthpush/GrowthPush;)Lcom/growthbeat/Logger;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/growthpush/GrowthPushException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v0}, Lcom/growthpush/GrowthPushException;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "Sending event fail. %s, code: %d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/growthbeat/Logger;->error(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
