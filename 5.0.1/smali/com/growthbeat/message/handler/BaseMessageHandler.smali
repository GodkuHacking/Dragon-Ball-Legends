.class public abstract Lcom/growthbeat/message/handler/BaseMessageHandler;
.super Ljava/lang/Object;
.source "BaseMessageHandler.java"

# interfaces
.implements Lcom/growthbeat/message/handler/MessageHandler;


# instance fields
.field protected context:Landroid/content/Context;

.field private renderHandler:Lcom/growthbeat/message/handler/ShowMessageHandler$MessageRenderHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/growthbeat/message/handler/BaseMessageHandler;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/growthbeat/message/handler/BaseMessageHandler;)Lcom/growthbeat/message/handler/ShowMessageHandler$MessageRenderHandler;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/growthbeat/message/handler/BaseMessageHandler;->renderHandler:Lcom/growthbeat/message/handler/ShowMessageHandler$MessageRenderHandler;

    return-object p0
.end method


# virtual methods
.method public abstract handle(Lcom/growthbeat/message/model/Message;Lcom/growthbeat/message/handler/MessageHandler$MessageDonwloadHandler;)Z
.end method

.method protected showMessage(Lcom/growthbeat/message/model/Message;Lcom/growthbeat/message/handler/MessageHandler$MessageDonwloadHandler;)V
    .locals 3

    .line 24
    new-instance v0, Lcom/growthbeat/message/handler/BaseMessageHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/growthbeat/message/handler/BaseMessageHandler$1;-><init>(Lcom/growthbeat/message/handler/BaseMessageHandler;Lcom/growthbeat/message/model/Message;)V

    iput-object v0, p0, Lcom/growthbeat/message/handler/BaseMessageHandler;->renderHandler:Lcom/growthbeat/message/handler/ShowMessageHandler$MessageRenderHandler;

    .line 31
    new-instance v0, Lcom/growthbeat/message/MessageImageDownloader;

    iget-object v1, p0, Lcom/growthbeat/message/handler/BaseMessageHandler;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    new-instance v2, Lcom/growthbeat/message/handler/BaseMessageHandler$2;

    invoke-direct {v2, p0, p2}, Lcom/growthbeat/message/handler/BaseMessageHandler$2;-><init>(Lcom/growthbeat/message/handler/BaseMessageHandler;Lcom/growthbeat/message/handler/MessageHandler$MessageDonwloadHandler;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/growthbeat/message/MessageImageDownloader;-><init>(Lcom/growthbeat/message/model/Message;FLcom/growthbeat/message/MessageImageDownloader$Callback;)V

    .line 44
    invoke-virtual {v0}, Lcom/growthbeat/message/MessageImageDownloader;->download()V

    return-void
.end method

.method protected startActivity(Lcom/growthbeat/message/model/Message;)V
    .locals 3

    .line 50
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/growthbeat/message/handler/BaseMessageHandler;->context:Landroid/content/Context;

    const-class v2, Lcom/growthbeat/message/view/MessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "message"

    .line 51
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 52
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    iget-object p1, p0, Lcom/growthbeat/message/handler/BaseMessageHandler;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
