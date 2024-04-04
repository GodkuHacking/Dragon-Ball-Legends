.class Lcom/growthpush/GrowthPush$1;
.super Ljava/lang/Object;
.source "GrowthPush.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthpush/GrowthPush;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/growthpush/model/Environment;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthpush/GrowthPush;

.field final synthetic val$adInfoEnabled:Z

.field final synthetic val$environment:Lcom/growthpush/model/Environment;


# direct methods
.method constructor <init>(Lcom/growthpush/GrowthPush;Lcom/growthpush/model/Environment;Z)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    iput-object p2, p0, Lcom/growthpush/GrowthPush$1;->val$environment:Lcom/growthpush/model/Environment;

    iput-boolean p3, p0, Lcom/growthpush/GrowthPush$1;->val$adInfoEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 98
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/Growthbeat;->waitClient()Lcom/growthbeat/model/Client;

    move-result-object v0

    .line 99
    invoke-static {}, Lcom/growthpush/model/Client;->load()Lcom/growthpush/model/Client;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {v1}, Lcom/growthpush/model/Client;->getGrowthbeatClientId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 103
    invoke-virtual {v1}, Lcom/growthpush/model/Client;->getGrowthbeatClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/growthbeat/model/Client;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    iget-object v2, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v2}, Lcom/growthpush/GrowthPush;->access$000(Lcom/growthpush/GrowthPush;)Lcom/growthbeat/Logger;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/growthbeat/model/Client;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "Client found. To Convert the Client to ClientV4. (id:%s)"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    invoke-virtual {v0}, Lcom/growthbeat/model/Client;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/growthpush/model/Client;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/growthpush/GrowthPush;->access$100(Lcom/growthpush/GrowthPush;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v1}, Lcom/growthpush/GrowthPush;->access$200(Lcom/growthpush/GrowthPush;)Lcom/growthbeat/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/Preference;->removeAll()V

    .line 108
    iget-object v1, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v1}, Lcom/growthpush/GrowthPush;->access$000(Lcom/growthpush/GrowthPush;)Lcom/growthbeat/Logger;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/growthbeat/model/Client;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "Disabled Client found. Create a new ClientV4. (id:%s)"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    invoke-virtual {v0}, Lcom/growthbeat/model/Client;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/growthpush/GrowthPush;->access$100(Lcom/growthpush/GrowthPush;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    invoke-static {}, Lcom/growthpush/model/Client;->clear()V

    goto/16 :goto_1

    .line 113
    :cond_1
    invoke-static {}, Lcom/growthpush/model/ClientV4;->load()Lcom/growthpush/model/ClientV4;

    move-result-object v1

    if-nez v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v1}, Lcom/growthpush/GrowthPush;->access$200(Lcom/growthpush/GrowthPush;)Lcom/growthbeat/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/Preference;->removeAll()V

    .line 117
    iget-object v1, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v1}, Lcom/growthpush/GrowthPush;->access$000(Lcom/growthpush/GrowthPush;)Lcom/growthbeat/Logger;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/growthbeat/model/Client;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "Create a new ClientV4. (id:%s)"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    invoke-virtual {v0}, Lcom/growthbeat/model/Client;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/growthpush/GrowthPush;->access$100(Lcom/growthpush/GrowthPush;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 119
    :cond_2
    invoke-virtual {v1}, Lcom/growthpush/model/ClientV4;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/growthbeat/model/Client;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 120
    iget-object v1, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v1}, Lcom/growthpush/GrowthPush;->access$200(Lcom/growthpush/GrowthPush;)Lcom/growthbeat/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/Preference;->removeAll()V

    .line 121
    iget-object v1, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v1}, Lcom/growthpush/GrowthPush;->access$000(Lcom/growthpush/GrowthPush;)Lcom/growthbeat/Logger;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/growthbeat/model/Client;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "Disabled ClientV4 found. Create a new ClientV4. (id:%s)"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    invoke-virtual {v0}, Lcom/growthbeat/model/Client;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/growthpush/GrowthPush;->access$100(Lcom/growthpush/GrowthPush;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 123
    :cond_3
    iget-object v2, p0, Lcom/growthpush/GrowthPush$1;->val$environment:Lcom/growthpush/model/Environment;

    invoke-virtual {v1}, Lcom/growthpush/model/ClientV4;->getEnvironment()Lcom/growthpush/model/Environment;

    move-result-object v5

    if-eq v2, v5, :cond_4

    .line 124
    iget-object v2, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v2}, Lcom/growthpush/GrowthPush;->access$000(Lcom/growthpush/GrowthPush;)Lcom/growthbeat/Logger;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/growthpush/GrowthPush$1;->val$environment:Lcom/growthpush/model/Environment;

    invoke-virtual {v5}, Lcom/growthpush/model/Environment;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "ClientV4 found. Update environment. (environment:%s)"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    invoke-virtual {v0}, Lcom/growthbeat/model/Client;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/growthpush/model/ClientV4;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/growthpush/GrowthPush;->access$300(Lcom/growthpush/GrowthPush;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v0}, Lcom/growthpush/GrowthPush;->access$000(Lcom/growthpush/GrowthPush;)Lcom/growthbeat/Logger;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/growthpush/model/ClientV4;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "ClientV4 found. (id:%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v0, v1}, Lcom/growthpush/GrowthPush;->access$402(Lcom/growthpush/GrowthPush;Lcom/growthpush/model/ClientV4;)Lcom/growthpush/model/ClientV4;

    .line 129
    iget-object v0, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v0}, Lcom/growthpush/GrowthPush;->access$500(Lcom/growthpush/GrowthPush;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 133
    :goto_1
    iget-boolean v0, p0, Lcom/growthpush/GrowthPush$1;->val$adInfoEnabled:Z

    if-eqz v0, :cond_5

    .line 134
    iget-object v0, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v0}, Lcom/growthpush/GrowthPush;->access$600(Lcom/growthpush/GrowthPush;)V

    .line 135
    iget-object v0, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v0}, Lcom/growthpush/GrowthPush;->access$700(Lcom/growthpush/GrowthPush;)V

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/growthpush/GrowthPush$1;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v0}, Lcom/growthpush/GrowthPush;->access$800(Lcom/growthpush/GrowthPush;)V

    return-void
.end method
