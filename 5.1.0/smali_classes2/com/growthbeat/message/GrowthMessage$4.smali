.class Lcom/growthbeat/message/GrowthMessage$4;
.super Ljava/lang/Object;
.source "GrowthMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/message/GrowthMessage;->notifyPopNextMessage()V
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

    .line 252
    iput-object p1, p0, Lcom/growthbeat/message/GrowthMessage$4;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage$4;->this$0:Lcom/growthbeat/message/GrowthMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/growthbeat/message/GrowthMessage;->access$802(Lcom/growthbeat/message/GrowthMessage;Z)Z

    .line 256
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage$4;->this$0:Lcom/growthbeat/message/GrowthMessage;

    invoke-virtual {v0}, Lcom/growthbeat/message/GrowthMessage;->openMessageIfExists()V

    return-void
.end method
