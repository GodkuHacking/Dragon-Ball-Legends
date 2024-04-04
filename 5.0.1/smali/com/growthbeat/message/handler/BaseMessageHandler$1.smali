.class Lcom/growthbeat/message/handler/BaseMessageHandler$1;
.super Ljava/lang/Object;
.source "BaseMessageHandler.java"

# interfaces
.implements Lcom/growthbeat/message/handler/ShowMessageHandler$MessageRenderHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/message/handler/BaseMessageHandler;->showMessage(Lcom/growthbeat/message/model/Message;Lcom/growthbeat/message/handler/MessageHandler$MessageDonwloadHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthbeat/message/handler/BaseMessageHandler;

.field final synthetic val$message:Lcom/growthbeat/message/model/Message;


# direct methods
.method constructor <init>(Lcom/growthbeat/message/handler/BaseMessageHandler;Lcom/growthbeat/message/model/Message;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/growthbeat/message/handler/BaseMessageHandler$1;->this$0:Lcom/growthbeat/message/handler/BaseMessageHandler;

    iput-object p2, p0, Lcom/growthbeat/message/handler/BaseMessageHandler$1;->val$message:Lcom/growthbeat/message/model/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public render()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/growthbeat/message/handler/BaseMessageHandler$1;->this$0:Lcom/growthbeat/message/handler/BaseMessageHandler;

    iget-object v1, p0, Lcom/growthbeat/message/handler/BaseMessageHandler$1;->val$message:Lcom/growthbeat/message/model/Message;

    invoke-virtual {v0, v1}, Lcom/growthbeat/message/handler/BaseMessageHandler;->startActivity(Lcom/growthbeat/message/model/Message;)V

    return-void
.end method
