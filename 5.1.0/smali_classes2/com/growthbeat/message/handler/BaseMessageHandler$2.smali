.class Lcom/growthbeat/message/handler/BaseMessageHandler$2;
.super Ljava/lang/Object;
.source "BaseMessageHandler.java"

# interfaces
.implements Lcom/growthbeat/message/MessageImageDownloader$Callback;


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

.field final synthetic val$downloadHandler:Lcom/growthbeat/message/handler/MessageHandler$MessageDonwloadHandler;


# direct methods
.method constructor <init>(Lcom/growthbeat/message/handler/BaseMessageHandler;Lcom/growthbeat/message/handler/MessageHandler$MessageDonwloadHandler;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/growthbeat/message/handler/BaseMessageHandler$2;->this$0:Lcom/growthbeat/message/handler/BaseMessageHandler;

    iput-object p2, p0, Lcom/growthbeat/message/handler/BaseMessageHandler$2;->val$downloadHandler:Lcom/growthbeat/message/handler/MessageHandler$MessageDonwloadHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure()V
    .locals 0

    return-void
.end method

.method public success()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/growthbeat/message/handler/BaseMessageHandler$2;->val$downloadHandler:Lcom/growthbeat/message/handler/MessageHandler$MessageDonwloadHandler;

    iget-object v1, p0, Lcom/growthbeat/message/handler/BaseMessageHandler$2;->this$0:Lcom/growthbeat/message/handler/BaseMessageHandler;

    invoke-static {v1}, Lcom/growthbeat/message/handler/BaseMessageHandler;->access$000(Lcom/growthbeat/message/handler/BaseMessageHandler;)Lcom/growthbeat/message/handler/ShowMessageHandler$MessageRenderHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/growthbeat/message/handler/MessageHandler$MessageDonwloadHandler;->complete(Lcom/growthbeat/message/handler/ShowMessageHandler$MessageRenderHandler;)V

    return-void
.end method
