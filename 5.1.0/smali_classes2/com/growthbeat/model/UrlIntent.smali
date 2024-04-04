.class public Lcom/growthbeat/model/UrlIntent;
.super Lcom/growthbeat/model/Intent;
.source "UrlIntent.java"


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/growthbeat/model/Intent;-><init>()V

    .line 14
    sget-object v0, Lcom/growthbeat/model/Intent$Type;->url:Lcom/growthbeat/model/Intent$Type;

    invoke-virtual {p0, v0}, Lcom/growthbeat/model/UrlIntent;->setType(Lcom/growthbeat/model/Intent$Type;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/growthbeat/model/Intent;-><init>(Lorg/json/JSONObject;)V

    .line 19
    sget-object p1, Lcom/growthbeat/model/Intent$Type;->url:Lcom/growthbeat/model/Intent$Type;

    invoke-virtual {p0, p1}, Lcom/growthbeat/model/UrlIntent;->setType(Lcom/growthbeat/model/Intent$Type;)V

    return-void
.end method


# virtual methods
.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 33
    invoke-super {p0}, Lcom/growthbeat/model/Intent;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/growthbeat/model/UrlIntent;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "url"

    .line 37
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 39
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to get JSON."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/growthbeat/model/UrlIntent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "url"

    if-nez p1, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/growthbeat/model/Intent;->setJsonObject(Lorg/json/JSONObject;)V

    .line 54
    :try_start_0
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/model/UrlIntent;->setUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse JSON."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/growthbeat/model/UrlIntent;->url:Ljava/lang/String;

    return-void
.end method
