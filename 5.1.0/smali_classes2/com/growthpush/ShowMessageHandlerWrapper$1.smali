.class final Lcom/growthpush/ShowMessageHandlerWrapper$1;
.super Ljava/lang/Object;
.source "ShowMessageHandlerWrapper.java"

# interfaces
.implements Lcom/growthbeat/message/handler/ShowMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthpush/ShowMessageHandlerWrapper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$gameObject:Ljava/lang/String;

.field final synthetic val$methodName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/growthpush/ShowMessageHandlerWrapper$1;->val$gameObject:Ljava/lang/String;

    iput-object p2, p0, Lcom/growthpush/ShowMessageHandlerWrapper$1;->val$methodName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/growthbeat/message/handler/ShowMessageHandler$MessageRenderHandler;)V
    .locals 2

    .line 19
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/growthpush/ShowMessageHandlerWrapper;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p1, p0, Lcom/growthpush/ShowMessageHandlerWrapper$1;->val$gameObject:Ljava/lang/String;

    iget-object v1, p0, Lcom/growthpush/ShowMessageHandlerWrapper$1;->val$methodName:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
