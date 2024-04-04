.class public Lcom/growthbeat/message/model/ShowMessageCount;
.super Lcom/growthbeat/model/Model;
.source "ShowMessageCount.java"


# instance fields
.field private clientId:Ljava/lang/String;

.field private count:I

.field private messageId:Ljava/lang/String;

.field private taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/growthbeat/model/Model;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static receiveCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/growthbeat/message/model/ShowMessageCount;
    .locals 2

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "clientId"

    .line 66
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "applicationId"

    .line 68
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "credentialId"

    .line 70
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p3, :cond_3

    const-string p0, "taskId"

    .line 72
    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p4, :cond_4

    const-string p0, "messageId"

    .line 74
    invoke-interface {v0, p0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_4
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object p0

    invoke-virtual {p0}, Lcom/growthpush/GrowthPush;->getHttpClient()Lcom/growthbeat/http/GrowthbeatHttpClient;

    move-result-object p0

    const-string p1, "4/receive/count"

    invoke-virtual {p0, p1, v0}, Lcom/growthbeat/http/GrowthbeatHttpClient;->post(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 80
    new-instance p1, Lcom/growthbeat/message/model/ShowMessageCount;

    invoke-direct {p1, p0}, Lcom/growthbeat/message/model/ShowMessageCount;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 78
    :cond_5
    new-instance p0, Lcom/growthbeat/GrowthbeatException;

    const-string p1, "Failed to count up message."

    invoke-direct {p0, p1}, Lcom/growthbeat/GrowthbeatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/growthbeat/message/model/ShowMessageCount;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/growthbeat/message/model/ShowMessageCount;->count:I

    return v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "clientId"

    .line 89
    invoke-virtual {p0}, Lcom/growthbeat/message/model/ShowMessageCount;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "messageId"

    .line 90
    invoke-virtual {p0}, Lcom/growthbeat/message/model/ShowMessageCount;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "taskId"

    .line 91
    invoke-virtual {p0}, Lcom/growthbeat/message/model/ShowMessageCount;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "count"

    .line 92
    invoke-virtual {p0}, Lcom/growthbeat/message/model/ShowMessageCount;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to get JSON."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/growthbeat/message/model/ShowMessageCount;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/growthbeat/message/model/ShowMessageCount;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/growthbeat/message/model/ShowMessageCount;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/growthbeat/message/model/ShowMessageCount;->count:I

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "count"

    const-string v1, "taskId"

    const-string v2, "messageId"

    const-string v3, "clientId"

    .line 104
    :try_start_0
    invoke-static {p1, v3}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/growthbeat/message/model/ShowMessageCount;->setClientId(Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-static {p1, v2}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/growthbeat/message/model/ShowMessageCount;->setMessageId(Ljava/lang/String;)V

    .line 108
    :cond_1
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/growthbeat/message/model/ShowMessageCount;->setTaskId(Ljava/lang/String;)V

    .line 110
    :cond_2
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/message/model/ShowMessageCount;->setCount(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse JSON."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/growthbeat/message/model/ShowMessageCount;->messageId:Ljava/lang/String;

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/growthbeat/message/model/ShowMessageCount;->taskId:Ljava/lang/String;

    return-void
.end method
