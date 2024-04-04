.class public Lcom/growthpush/ShowMessageHandlerWrapper;
.super Ljava/lang/Object;
.source "ShowMessageHandlerWrapper.java"


# static fields
.field private static messageRenderHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/growthbeat/message/handler/ShowMessageHandler$MessageRenderHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/growthpush/ShowMessageHandlerWrapper;->messageRenderHandlers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 10
    sget-object v0, Lcom/growthpush/ShowMessageHandlerWrapper;->messageRenderHandlers:Ljava/util/Map;

    return-object v0
.end method

.method public static renderMessage(Ljava/lang/String;)V
    .locals 1

    .line 32
    sget-object v0, Lcom/growthpush/ShowMessageHandlerWrapper;->messageRenderHandlers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/growthbeat/message/handler/ShowMessageHandler$MessageRenderHandler;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0}, Lcom/growthbeat/message/handler/ShowMessageHandler$MessageRenderHandler;->render()V

    .line 35
    sget-object v0, Lcom/growthpush/ShowMessageHandlerWrapper;->messageRenderHandlers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 16
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v0

    new-instance v1, Lcom/growthpush/ShowMessageHandlerWrapper$1;

    invoke-direct {v1, p2, p3}, Lcom/growthpush/ShowMessageHandlerWrapper$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/growthpush/GrowthPush;->trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/growthbeat/message/handler/ShowMessageHandler;)V

    return-void
.end method
