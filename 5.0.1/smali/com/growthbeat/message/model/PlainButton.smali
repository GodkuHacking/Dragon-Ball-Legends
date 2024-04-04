.class public Lcom/growthbeat/message/model/PlainButton;
.super Lcom/growthbeat/message/model/Button;
.source "PlainButton.java"


# instance fields
.field private label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/growthbeat/message/model/Button;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/growthbeat/message/model/Button;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 31
    invoke-super {p0}, Lcom/growthbeat/message/model/Button;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "label"

    .line 34
    invoke-virtual {p0}, Lcom/growthbeat/message/model/PlainButton;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 36
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to get JSON."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/growthbeat/message/model/PlainButton;->label:Ljava/lang/String;

    return-object v0
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "label"

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-super {p0, p1}, Lcom/growthbeat/message/model/Button;->setJsonObject(Lorg/json/JSONObject;)V

    .line 52
    :try_start_0
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/message/model/PlainButton;->setLabel(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse JSON."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/growthbeat/message/model/PlainButton;->label:Ljava/lang/String;

    return-void
.end method
