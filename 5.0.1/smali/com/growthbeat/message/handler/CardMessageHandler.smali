.class public Lcom/growthbeat/message/handler/CardMessageHandler;
.super Lcom/growthbeat/message/handler/BaseMessageHandler;
.source "CardMessageHandler.java"


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

    sget-object v1, Lcom/growthbeat/message/model/Message$MessageType;->card:Lcom/growthbeat/message/model/Message$MessageType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 19
    :cond_0
    instance-of v0, p1, Lcom/growthbeat/message/model/CardMessage;

    if-nez v0, :cond_1

    return v2

    .line 22
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/growthbeat/message/handler/CardMessageHandler;->showMessage(Lcom/growthbeat/message/model/Message;Lcom/growthbeat/message/handler/MessageHandler$MessageDonwloadHandler;)V

    const/4 p1, 0x1

    return p1
.end method
