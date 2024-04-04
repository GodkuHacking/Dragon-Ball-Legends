.class Lcom/growthbeat/intenthandler/IntentHandlerWrapper$1;
.super Ljava/lang/Object;
.source "IntentHandlerWrapper.java"

# interfaces
.implements Lcom/growthbeat/intenthandler/IntentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/intenthandler/IntentHandlerWrapper;->addCustomIntentHandler(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthbeat/intenthandler/IntentHandlerWrapper;

.field final synthetic val$gameObject:Ljava/lang/String;

.field final synthetic val$methodName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/growthbeat/intenthandler/IntentHandlerWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/growthbeat/intenthandler/IntentHandlerWrapper$1;->this$0:Lcom/growthbeat/intenthandler/IntentHandlerWrapper;

    iput-object p2, p0, Lcom/growthbeat/intenthandler/IntentHandlerWrapper$1;->val$gameObject:Ljava/lang/String;

    iput-object p3, p0, Lcom/growthbeat/intenthandler/IntentHandlerWrapper$1;->val$methodName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/growthbeat/model/Intent;)Z
    .locals 3

    .line 44
    invoke-virtual {p1}, Lcom/growthbeat/model/Intent;->getType()Lcom/growthbeat/model/Intent$Type;

    move-result-object v0

    sget-object v1, Lcom/growthbeat/model/Intent$Type;->custom:Lcom/growthbeat/model/Intent$Type;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 46
    :cond_0
    check-cast p1, Lcom/growthbeat/model/CustomIntent;

    invoke-virtual {p1}, Lcom/growthbeat/model/CustomIntent;->getExtra()Ljava/util/Map;

    move-result-object p1

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 48
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 50
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/growthbeat/intenthandler/IntentHandlerWrapper$1;->val$gameObject:Ljava/lang/String;

    iget-object v1, p0, Lcom/growthbeat/intenthandler/IntentHandlerWrapper$1;->val$methodName:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
