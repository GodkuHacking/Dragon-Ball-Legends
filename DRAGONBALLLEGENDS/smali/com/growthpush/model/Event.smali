.class public Lcom/growthpush/model/Event;
.super Lcom/growthbeat/model/Model;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/growthpush/model/Event$EventType;
    }
.end annotation


# instance fields
.field private clientId:Ljava/lang/String;

.field private goalId:I

.field private timestamp:J

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/growthbeat/model/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/growthpush/model/Event;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/growthpush/model/Event;->setJsonObject(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/growthpush/model/Event$EventType;Ljava/lang/String;Ljava/lang/String;)Lcom/growthpush/model/Event;
    .locals 2

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "clientId"

    .line 36
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "applicationId"

    .line 38
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "credentialId"

    .line 40
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p3, :cond_3

    .line 42
    invoke-virtual {p3}, Lcom/growthpush/model/Event$EventType;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "type"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p4, :cond_4

    const-string p0, "name"

    .line 44
    invoke-interface {v0, p0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p5, :cond_5

    const-string p0, "value"

    .line 46
    invoke-interface {v0, p0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_5
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object p0

    invoke-virtual {p0}, Lcom/growthpush/GrowthPush;->getHttpClient()Lcom/growthbeat/http/GrowthbeatHttpClient;

    move-result-object p0

    const-string p1, "4/events"

    invoke-virtual {p0, p1, v0}, Lcom/growthbeat/http/GrowthbeatHttpClient;->post(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_6
    new-instance p1, Lcom/growthpush/model/Event;

    invoke-direct {p1, p0}, Lcom/growthpush/model/Event;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/growthpush/model/Event;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoalId()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/growthpush/model/Event;->goalId:I

    return v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 4

    .line 90
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "goalId"

    .line 93
    invoke-virtual {p0}, Lcom/growthpush/model/Event;->getGoalId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "clientId"

    .line 94
    invoke-virtual {p0}, Lcom/growthpush/model/Event;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    .line 95
    invoke-virtual {p0}, Lcom/growthpush/model/Event;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 96
    iget-object v1, p0, Lcom/growthpush/model/Event;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "value"

    .line 97
    invoke-virtual {p0}, Lcom/growthpush/model/Event;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/growthpush/model/Event;->timestamp:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/growthpush/model/Event;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/growthpush/model/Event;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setGoalId(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/growthpush/model/Event;->goalId:I

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "value"

    const-string v1, "timestamp"

    const-string v2, "clientId"

    const-string v3, "goalId"

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    :try_start_0
    invoke-static {p1, v3}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/growthpush/model/Event;->setGoalId(I)V

    .line 114
    :cond_1
    invoke-static {p1, v2}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/growthpush/model/Event;->setClientId(Ljava/lang/String;)V

    .line 116
    :cond_2
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/growthpush/model/Event;->setTimestamp(J)V

    .line 118
    :cond_3
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 119
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthpush/model/Event;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    .line 121
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to parse JSON."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 77
    iput-wide p1, p0, Lcom/growthpush/model/Event;->timestamp:J

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/growthpush/model/Event;->value:Ljava/lang/String;

    return-void
.end method
