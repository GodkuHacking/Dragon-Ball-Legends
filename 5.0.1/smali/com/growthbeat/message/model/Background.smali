.class public Lcom/growthbeat/message/model/Background;
.super Lcom/growthbeat/model/Model;
.source "Background.java"


# instance fields
.field private color:I

.field opacity:D

.field outsideClose:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/growthbeat/model/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/growthbeat/model/Model;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/growthbeat/message/model/Background;->color:I

    return v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 4

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "color"

    .line 55
    iget v2, p0, Lcom/growthbeat/message/model/Background;->color:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "opacity"

    .line 56
    iget-wide v2, p0, Lcom/growthbeat/message/model/Background;->opacity:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "outsideClose"

    .line 57
    iget-boolean v2, p0, Lcom/growthbeat/message/model/Background;->outsideClose:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to get JSON."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOpacity()D
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/growthbeat/message/model/Background;->opacity:D

    return-wide v0
.end method

.method public isOutsideClose()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/growthbeat/message/model/Background;->outsideClose:Z

    return v0
.end method

.method public setColor(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/growthbeat/message/model/Background;->color:I

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "outsideClose"

    const-string v1, "opacity"

    const-string v2, "color"

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    :try_start_0
    invoke-static {p1, v2}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/growthbeat/message/model/Background;->setColor(I)V

    .line 73
    :cond_1
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/growthbeat/message/model/Background;->setOpacity(D)V

    .line 75
    :cond_2
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/message/model/Background;->setOutsideClose(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse JSON."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setOpacity(D)V
    .locals 0

    .line 39
    iput-wide p1, p0, Lcom/growthbeat/message/model/Background;->opacity:D

    return-void
.end method

.method public setOutsideClose(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/growthbeat/message/model/Background;->outsideClose:Z

    return-void
.end method
