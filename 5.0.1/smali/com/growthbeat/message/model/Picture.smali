.class public Lcom/growthbeat/message/model/Picture;
.super Lcom/growthbeat/model/Model;
.source "Picture.java"


# instance fields
.field private applicationId:Ljava/lang/String;

.field private created:Ljava/util/Date;

.field private id:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/growthbeat/model/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/growthbeat/model/Model;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/growthbeat/message/model/Picture;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/growthbeat/message/model/Picture;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/growthbeat/message/model/Picture;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/growthbeat/message/model/Picture;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "id"

    .line 66
    iget-object v2, p0, Lcom/growthbeat/message/model/Picture;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/growthbeat/message/model/Picture;->applicationId:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "applicationId"

    .line 68
    iget-object v2, p0, Lcom/growthbeat/message/model/Picture;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/growthbeat/message/model/Picture;->url:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "url"

    .line 70
    iget-object v2, p0, Lcom/growthbeat/message/model/Picture;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/growthbeat/message/model/Picture;->created:Ljava/util/Date;

    if-eqz v1, :cond_3

    const-string v1, "created"

    .line 72
    iget-object v2, p0, Lcom/growthbeat/message/model/Picture;->created:Ljava/util/Date;

    invoke-static {v2}, Lcom/growthbeat/utils/DateUtils;->formatToDateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    .line 74
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to get JSON."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/growthbeat/message/model/Picture;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/growthbeat/message/model/Picture;->applicationId:Ljava/lang/String;

    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/growthbeat/message/model/Picture;->created:Ljava/util/Date;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/growthbeat/message/model/Picture;->id:Ljava/lang/String;

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "created"

    const-string v1, "url"

    const-string v2, "applicationId"

    const-string v3, "id"

    if-nez p1, :cond_0

    return-void

    .line 88
    :cond_0
    :try_start_0
    invoke-static {p1, v3}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/growthbeat/message/model/Picture;->setId(Ljava/lang/String;)V

    .line 90
    :cond_1
    invoke-static {p1, v2}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/growthbeat/message/model/Picture;->setApplicationId(Ljava/lang/String;)V

    .line 92
    :cond_2
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/growthbeat/message/model/Picture;->setUrl(Ljava/lang/String;)V

    .line 94
    :cond_3
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 95
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/growthbeat/utils/DateUtils;->parseFromDateTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/message/model/Picture;->setCreated(Ljava/util/Date;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse JSON."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/growthbeat/message/model/Picture;->url:Ljava/lang/String;

    return-void
.end method
