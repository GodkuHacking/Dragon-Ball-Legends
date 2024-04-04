.class public Lcom/growthbeat/model/Intent;
.super Lcom/growthbeat/model/Model;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/growthbeat/model/Intent$Type;
    }
.end annotation


# instance fields
.field private applicationId:Ljava/lang/String;

.field private created:Ljava/util/Date;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:Lcom/growthbeat/model/Intent$Type;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/growthbeat/model/Model;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/growthbeat/model/Model;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static getFromJsonObject(Lorg/json/JSONObject;)Lcom/growthbeat/model/Intent;
    .locals 2

    .line 29
    new-instance v0, Lcom/growthbeat/model/Intent;

    invoke-direct {v0, p0}, Lcom/growthbeat/model/Intent;-><init>(Lorg/json/JSONObject;)V

    .line 30
    sget-object v1, Lcom/growthbeat/model/Intent$1;->$SwitchMap$com$growthbeat$model$Intent$Type:[I

    invoke-virtual {v0}, Lcom/growthbeat/model/Intent;->getType()Lcom/growthbeat/model/Intent$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/model/Intent$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_0
    new-instance v0, Lcom/growthbeat/model/UrlIntent;

    invoke-direct {v0, p0}, Lcom/growthbeat/model/UrlIntent;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .line 34
    :cond_1
    new-instance v0, Lcom/growthbeat/model/NoopIntent;

    invoke-direct {v0, p0}, Lcom/growthbeat/model/NoopIntent;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .line 32
    :cond_2
    new-instance v0, Lcom/growthbeat/model/CustomIntent;

    invoke-direct {v0, p0}, Lcom/growthbeat/model/CustomIntent;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/growthbeat/model/Intent;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/growthbeat/model/Intent;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/growthbeat/model/Intent;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/growthbeat/model/Intent;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "id"

    .line 89
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/growthbeat/model/Intent;->applicationId:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "applicationId"

    .line 91
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/growthbeat/model/Intent;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "name"

    .line 93
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/growthbeat/model/Intent;->type:Lcom/growthbeat/model/Intent$Type;

    if-eqz v1, :cond_3

    const-string v2, "type"

    .line 95
    invoke-virtual {v1}, Lcom/growthbeat/model/Intent$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    :cond_3
    iget-object v1, p0, Lcom/growthbeat/model/Intent;->created:Ljava/util/Date;

    if-eqz v1, :cond_4

    const-string v2, "created"

    .line 97
    invoke-static {v1}, Lcom/growthbeat/utils/DateUtils;->formatToDateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to get JSON."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/growthbeat/model/Intent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/growthbeat/model/Intent$Type;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/growthbeat/model/Intent;->type:Lcom/growthbeat/model/Intent$Type;

    return-object v0
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/growthbeat/model/Intent;->applicationId:Ljava/lang/String;

    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/growthbeat/model/Intent;->created:Ljava/util/Date;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/growthbeat/model/Intent;->id:Ljava/lang/String;

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "created"

    const-string v1, "type"

    const-string v2, "name"

    const-string v3, "applicationId"

    const-string v4, "id"

    if-nez p1, :cond_0

    return-void

    .line 111
    :cond_0
    :try_start_0
    invoke-static {p1, v4}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/growthbeat/model/Intent;->setId(Ljava/lang/String;)V

    .line 113
    :cond_1
    invoke-static {p1, v3}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/growthbeat/model/Intent;->setApplicationId(Ljava/lang/String;)V

    .line 115
    :cond_2
    invoke-static {p1, v2}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/growthbeat/model/Intent;->setName(Ljava/lang/String;)V

    .line 117
    :cond_3
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 118
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/growthbeat/model/Intent$Type;->valueOf(Ljava/lang/String;)Lcom/growthbeat/model/Intent$Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/growthbeat/model/Intent;->setType(Lcom/growthbeat/model/Intent$Type;)V

    .line 119
    :cond_4
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 120
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/growthbeat/utils/DateUtils;->parseFromDateTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/model/Intent;->setCreated(Ljava/util/Date;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception p1

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse JSON."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/growthbeat/model/Intent;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/growthbeat/model/Intent$Type;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/growthbeat/model/Intent;->type:Lcom/growthbeat/model/Intent$Type;

    return-void
.end method
