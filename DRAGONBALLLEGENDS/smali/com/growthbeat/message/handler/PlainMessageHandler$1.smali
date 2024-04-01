.class Lcom/growthbeat/message/handler/PlainMessageHandler$1;
.super Ljava/lang/Object;
.source "PlainMessageHandler.java"

# interfaces
.implements Lcom/growthbeat/message/handler/ShowMessageHandler$MessageRenderHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/message/handler/PlainMessageHandler;->handle(Lcom/growthbeat/message/model/Message;Lcom/growthbeat/message/handler/MessageHandler$MessageDonwloadHandler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthbeat/message/handler/PlainMessageHandler;

.field final synthetic val$message:Lcom/growthbeat/message/model/Message;


# direct methods
.method constructor <init>(Lcom/growthbeat/message/handler/PlainMessageHandler;Lcom/growthbeat/message/model/Message;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/growthbeat/message/handler/PlainMessageHandler$1;->this$0:Lcom/growthbeat/message/handler/PlainMessageHandler;

    iput-object p2, p0, Lcom/growthbeat/message/handler/PlainMessageHandler$1;->val$message:Lcom/growthbeat/message/model/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public render()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/growthbeat/message/handler/PlainMessageHandler$1;->this$0:Lcom/growthbeat/message/handler/PlainMessageHandler;

    iget-object v1, p0, Lcom/growthbeat/message/handler/PlainMessageHandler$1;->val$message:Lcom/growthbeat/message/model/Message;

    invoke-virtual {v0, v1}, Lcom/growthbeat/message/handler/PlainMessageHandler;->startActivity(Lcom/growthbeat/message/model/Message;)V

    return-void
.end method
