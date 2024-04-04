.class public Lcom/growthbeat/model/Error;
.super Lcom/growthbeat/model/Model;
.source "Error.java"


# instance fields
.field private code:Ljava/lang/Integer;

.field private message:Ljava/lang/String;

.field private status:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/growthbeat/model/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/growthbeat/model/Error;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lcom/growthbeat/model/Error;->setJsonObject(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/Integer;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/growthbeat/model/Error;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/growthbeat/model/Error;->status:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string v2, "status"

    .line 54
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/growthbeat/model/Error;->code:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v2, "code"

    .line 56
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/growthbeat/model/Error;->message:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "message"

    .line 58
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/growthbeat/model/Error;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Integer;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/growthbeat/model/Error;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method public setCode(Ljava/lang/Integer;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/growthbeat/model/Error;->code:Ljava/lang/Integer;

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "message"

    const-string v1, "code"

    const-string v2, "status"

    .line 71
    :try_start_0
    invoke-static {p1, v2}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/growthbeat/model/Error;->setStatus(Ljava/lang/Integer;)V

    .line 73
    :cond_0
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/growthbeat/model/Error;->setCode(Ljava/lang/Integer;)V

    .line 75
    :cond_1
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/model/Error;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    .line 78
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to parse JSON."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/growthbeat/model/Error;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/Integer;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/growthbeat/model/Error;->status:Ljava/lang/Integer;

    return-void
.end method
