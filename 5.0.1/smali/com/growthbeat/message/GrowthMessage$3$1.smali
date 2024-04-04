.class Lcom/growthbeat/message/GrowthMessage$3$1;
.super Ljava/lang/Object;
.source "GrowthMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/message/GrowthMessage$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/growthbeat/message/GrowthMessage$3;

.field final synthetic val$messageJob:Lcom/growthbeat/message/MessageQueue;


# direct methods
.method constructor <init>(Lcom/growthbeat/message/GrowthMessage$3;Lcom/growthbeat/message/MessageQueue;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/growthbeat/message/GrowthMessage$3$1;->this$1:Lcom/growthbeat/message/GrowthMessage$3;

    iput-object p2, p0, Lcom/growthbeat/message/GrowthMessage$3$1;->val$messageJob:Lcom/growthbeat/message/MessageQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage$3$1;->this$1:Lcom/growthbeat/message/GrowthMessage$3;

    iget-object v0, v0, Lcom/growthbeat/message/GrowthMessage$3;->this$0:Lcom/growthbeat/message/GrowthMessage;

    iget-object v1, p0, Lcom/growthbeat/message/GrowthMessage$3$1;->val$messageJob:Lcom/growthbeat/message/MessageQueue;

    invoke-static {v0, v1}, Lcom/growthbeat/message/GrowthMessage;->access$900(Lcom/growthbeat/message/GrowthMessage;Lcom/growthbeat/message/MessageQueue;)V

    return-void
.end method
