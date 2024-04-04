.class public Lcom/facebook/unity/UnityMessage;
.super Ljava/lang/Object;
.source "UnityMessage.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private methodName:Ljava/lang/String;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/unity/UnityMessage;->params:Ljava/util/Map;

    .line 33
    iput-object p1, p0, Lcom/facebook/unity/UnityMessage;->methodName:Ljava/lang/String;

    return-void
.end method

.method public static createWithCallbackFromParams(Ljava/lang/String;Lcom/facebook/unity/UnityParams;)Lcom/facebook/unity/UnityMessage;
    .locals 2

    .line 70
    new-instance v0, Lcom/facebook/unity/UnityMessage;

    invoke-direct {v0, p0}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    const-string p0, "callback_id"

    .line 71
    invoke-virtual {p1, p0}, Lcom/facebook/unity/UnityParams;->hasString(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p1, p0}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/facebook/unity/UnityMessage;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putCancelled()Lcom/facebook/unity/UnityMessage;
    .locals 2

    const/4 v0, 0x1

    .line 42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "cancelled"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    return-object p0
.end method

.method public putID(Ljava/lang/String;)Lcom/facebook/unity/UnityMessage;
    .locals 1

    const-string v0, "id"

    .line 47
    invoke-virtual {p0, v0, p1}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    return-object p0
.end method

.method public send()V
    .locals 4

    .line 58
    new-instance v0, Lcom/facebook/unity/UnityParams;

    iget-object v1, p0, Lcom/facebook/unity/UnityMessage;->params:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/facebook/unity/UnityParams;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/facebook/unity/UnityParams;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending to Unity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/facebook/unity/UnityMessage;->methodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "UnityFacebookSDKPlugin"

    .line 61
    iget-object v2, p0, Lcom/facebook/unity/UnityMessage;->methodName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/facebook/unity/UnityReflection;->SendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    const-string v1, "message not send, Unity not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "error"

    .line 52
    invoke-virtual {p0, v0, p1}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 53
    invoke-virtual {p0}, Lcom/facebook/unity/UnityMessage;->send()V

    return-void
.end method
