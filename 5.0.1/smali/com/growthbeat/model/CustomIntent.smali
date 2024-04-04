.class public Lcom/growthbeat/model/CustomIntent;
.super Lcom/growthbeat/model/Intent;
.source "CustomIntent.java"


# instance fields
.field private extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/growthbeat/model/Intent;-><init>()V

    .line 18
    sget-object v0, Lcom/growthbeat/model/Intent$Type;->custom:Lcom/growthbeat/model/Intent$Type;

    invoke-virtual {p0, v0}, Lcom/growthbeat/model/CustomIntent;->setType(Lcom/growthbeat/model/Intent$Type;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/growthbeat/model/Intent;-><init>(Lorg/json/JSONObject;)V

    .line 23
    sget-object p1, Lcom/growthbeat/model/Intent$Type;->custom:Lcom/growthbeat/model/Intent$Type;

    invoke-virtual {p0, p1}, Lcom/growthbeat/model/CustomIntent;->setType(Lcom/growthbeat/model/Intent$Type;)V

    return-void
.end method


# virtual methods
.method public getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/growthbeat/model/CustomIntent;->extra:Ljava/util/Map;

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 5

    .line 37
    invoke-super {p0}, Lcom/growthbeat/model/Intent;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/growthbeat/model/CustomIntent;->extra:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 40
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 41
    iget-object v2, p0, Lcom/growthbeat/model/CustomIntent;->extra:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 42
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v2, "extra"

    .line 43
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    .line 46
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to get JSON."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExtra(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/growthbeat/model/CustomIntent;->extra:Ljava/util/Map;

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "extra"

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-super {p0, p1}, Lcom/growthbeat/model/Intent;->setJsonObject(Lorg/json/JSONObject;)V

    .line 60
    :try_start_0
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 62
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0, v1}, Lcom/growthbeat/model/CustomIntent;->setExtra(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse JSON."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
