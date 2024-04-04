.class Lcom/growthpush/GrowthPush$3;
.super Ljava/lang/Object;
.source "GrowthPush.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthpush/GrowthPush;->registerClient(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthpush/GrowthPush;

.field final synthetic val$registrationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/growthpush/GrowthPush;Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/growthpush/GrowthPush$3;->this$0:Lcom/growthpush/GrowthPush;

    iput-object p2, p0, Lcom/growthpush/GrowthPush$3;->val$registrationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/growthpush/GrowthPush$3;->val$registrationId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/growthpush/GrowthPush$3;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v0}, Lcom/growthpush/GrowthPush;->access$900(Lcom/growthpush/GrowthPush;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/growthpush/GrowthPush$3;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v0}, Lcom/growthpush/GrowthPush;->access$000(Lcom/growthpush/GrowthPush;)Lcom/growthbeat/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "registerClient initialize client timeout."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/growthbeat/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/growthpush/GrowthPush$3;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v0}, Lcom/growthpush/GrowthPush;->access$400(Lcom/growthpush/GrowthPush;)Lcom/growthpush/model/ClientV4;

    move-result-object v0

    if-nez v0, :cond_2

    .line 207
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/Growthbeat;->waitClient()Lcom/growthbeat/model/Client;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/growthpush/GrowthPush$3;->this$0:Lcom/growthpush/GrowthPush;

    invoke-virtual {v0}, Lcom/growthbeat/model/Client;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/growthpush/GrowthPush$3;->val$registrationId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/growthpush/GrowthPush;->access$100(Lcom/growthpush/GrowthPush;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/growthpush/GrowthPush$3;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v0}, Lcom/growthpush/GrowthPush;->access$400(Lcom/growthpush/GrowthPush;)Lcom/growthpush/model/ClientV4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthpush/model/ClientV4;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/growthpush/GrowthPush$3;->this$0:Lcom/growthpush/GrowthPush;

    .line 213
    invoke-static {v0}, Lcom/growthpush/GrowthPush;->access$400(Lcom/growthpush/GrowthPush;)Lcom/growthpush/model/ClientV4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthpush/model/ClientV4;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/growthpush/GrowthPush$3;->val$registrationId:Ljava/lang/String;

    iget-object v1, p0, Lcom/growthpush/GrowthPush$3;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v1}, Lcom/growthpush/GrowthPush;->access$400(Lcom/growthpush/GrowthPush;)Lcom/growthpush/model/ClientV4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthpush/model/ClientV4;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/growthpush/GrowthPush$3;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v0}, Lcom/growthpush/GrowthPush;->access$400(Lcom/growthpush/GrowthPush;)Lcom/growthpush/model/ClientV4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthpush/model/ClientV4;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/growthpush/GrowthPush$3;->val$registrationId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/growthpush/GrowthPush;->access$300(Lcom/growthpush/GrowthPush;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
