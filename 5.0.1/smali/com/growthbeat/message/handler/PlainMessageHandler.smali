.class public Lcom/growthbeat/message/handler/PlainMessageHandler;
.super Lcom/growthbeat/message/handler/BaseMessageHandler;
.source "PlainMessageHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/growthbeat/message/handler/BaseMessageHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/growthbeat/message/model/Message;Lcom/growthbeat/message/handler/MessageHandler$MessageDonwloadHandler;)Z
    .locals 3

    .line 17
    invoke-virtual {p1}, Lcom/growthbeat/message/model/Message;->getType()Lcom/growthbeat/message/model/Message$MessageType;

    move-result-object v0

    sget-object v1, Lcom/growthbeat/message/model/Message$MessageType;->plain:Lcom/growthbeat/message/model/Message$MessageType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 19
    :cond_0
    instance-of v0, p1, Lcom/growthbeat/message/model/PlainMessage;

    if-nez v0, :cond_1

    return v2

    .line 22
    :cond_1
    new-instance v0, Lcom/growthbeat/message/handler/PlainMessageHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/growthbeat/message/handler/PlainMessageHandler$1;-><init>(Lcom/growthbeat/message/handler/PlainMessageHandler;Lcom/growthbeat/message/model/Message;)V

    .line 29
    invoke-interface {p2, v0}, Lcom/growthbeat/message/handler/MessageHandler$MessageDonwloadHandler;->complete(Lcom/growthbeat/message/handler/ShowMessageHandler$MessageRenderHandler;)V

    const/4 p1, 0x1

    return p1
.end method
