.class Lcom/growthbeat/Growthbeat$1;
.super Ljava/lang/Object;
.source "Growthbeat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/Growthbeat;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthbeat/Growthbeat;

.field final synthetic val$applicationId:Ljava/lang/String;

.field final synthetic val$credentialId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/growthbeat/Growthbeat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/growthbeat/Growthbeat$1;->this$0:Lcom/growthbeat/Growthbeat;

    iput-object p2, p0, Lcom/growthbeat/Growthbeat$1;->val$credentialId:Ljava/lang/String;

    iput-object p3, p0, Lcom/growthbeat/Growthbeat$1;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 83
    invoke-static {}, Lcom/growthbeat/model/GrowthPushClient;->load()Lcom/growthbeat/model/GrowthPushClient;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Lcom/growthbeat/model/GrowthPushClient;->getId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/growthbeat/model/GrowthPushClient;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/growthbeat/model/GrowthPushClient;->findByGrowthPushClientId(JLjava/lang/String;)Lcom/growthbeat/model/GrowthPushClient;

    move-result-object v0

    .line 86
    iget-object v3, p0, Lcom/growthbeat/Growthbeat$1;->this$0:Lcom/growthbeat/Growthbeat;

    invoke-static {v3}, Lcom/growthbeat/Growthbeat;->access$000(Lcom/growthbeat/Growthbeat;)Lcom/growthbeat/Logger;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 88
    invoke-virtual {v0}, Lcom/growthbeat/model/GrowthPushClient;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0}, Lcom/growthbeat/model/GrowthPushClient;->getGrowthbeatClientId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "Growth Push Client found. Convert GrowthPush Client into Growthbeat Client. (GrowthPushClientId:%d, GrowthbeatClientId:%s)"

    .line 87
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {v3, v4}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Lcom/growthbeat/model/GrowthPushClient;->getGrowthbeatClientId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/growthbeat/Growthbeat$1;->val$credentialId:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/growthbeat/model/Client;->findById(Ljava/lang/String;Ljava/lang/String;)Lcom/growthbeat/model/Client;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/growthbeat/Growthbeat$1;->this$0:Lcom/growthbeat/Growthbeat;

    invoke-static {v1}, Lcom/growthbeat/Growthbeat;->access$000(Lcom/growthbeat/Growthbeat;)Lcom/growthbeat/Logger;

    move-result-object v1

    const-string v2, "Failed to convert client."

    invoke-virtual {v1, v2}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {v0}, Lcom/growthbeat/model/Client;->save(Lcom/growthbeat/model/Client;)V

    .line 95
    iget-object v3, p0, Lcom/growthbeat/Growthbeat$1;->this$0:Lcom/growthbeat/Growthbeat;

    invoke-static {v3}, Lcom/growthbeat/Growthbeat;->access$000(Lcom/growthbeat/Growthbeat;)Lcom/growthbeat/Logger;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/growthbeat/model/Client;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v1, "Client converted. (id:%s)"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/growthbeat/Growthbeat$1;->this$0:Lcom/growthbeat/Growthbeat;

    invoke-static {v1, v0}, Lcom/growthbeat/Growthbeat;->access$102(Lcom/growthbeat/Growthbeat;Lcom/growthbeat/model/Client;)Lcom/growthbeat/model/Client;

    .line 99
    invoke-static {}, Lcom/growthbeat/model/GrowthPushClient;->removePreference()V

    goto :goto_1

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/growthbeat/Growthbeat$1;->this$0:Lcom/growthbeat/Growthbeat;

    invoke-static {v0}, Lcom/growthbeat/Growthbeat;->access$000(Lcom/growthbeat/Growthbeat;)Lcom/growthbeat/Logger;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/growthbeat/Growthbeat$1;->val$applicationId:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "Creating client... (applicationId:%s)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/growthbeat/Growthbeat$1;->val$applicationId:Ljava/lang/String;

    iget-object v3, p0, Lcom/growthbeat/Growthbeat$1;->val$credentialId:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/growthbeat/model/Client;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/growthbeat/model/Client;

    move-result-object v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/growthbeat/Growthbeat$1;->this$0:Lcom/growthbeat/Growthbeat;

    invoke-static {v0}, Lcom/growthbeat/Growthbeat;->access$000(Lcom/growthbeat/Growthbeat;)Lcom/growthbeat/Logger;

    move-result-object v0

    const-string v1, "Failed to create client."

    invoke-virtual {v0, v1}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 110
    :cond_2
    invoke-static {v0}, Lcom/growthbeat/model/Client;->save(Lcom/growthbeat/model/Client;)V

    .line 111
    iget-object v3, p0, Lcom/growthbeat/Growthbeat$1;->this$0:Lcom/growthbeat/Growthbeat;

    invoke-static {v3, v0}, Lcom/growthbeat/Growthbeat;->access$102(Lcom/growthbeat/Growthbeat;Lcom/growthbeat/model/Client;)Lcom/growthbeat/model/Client;

    .line 112
    iget-object v3, p0, Lcom/growthbeat/Growthbeat$1;->this$0:Lcom/growthbeat/Growthbeat;

    invoke-static {v3}, Lcom/growthbeat/Growthbeat;->access$000(Lcom/growthbeat/Growthbeat;)Lcom/growthbeat/Logger;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/growthbeat/model/Client;->getId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Client created. (id:%s)"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
