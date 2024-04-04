.class public Lcom/growthbeat/http/GrowthbeatHttpClient;
.super Lcom/growthbeat/http/BaseHttpClient;
.source "GrowthbeatHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/growthbeat/http/BaseHttpClient;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/growthbeat/http/BaseHttpClient;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private fetchJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3

    .line 122
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 124
    new-instance v0, Lcom/growthbeat/GrowthbeatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse response JSON. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/growthbeat/GrowthbeatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private fetchJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 67
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 69
    new-instance v0, Lcom/growthbeat/GrowthbeatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse response JSON. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/growthbeat/GrowthbeatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "DELETE"

    .line 46
    invoke-virtual {p0, v0, p1, p2}, Lcom/growthbeat/http/GrowthbeatHttpClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "DELETE"

    .line 50
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/growthbeat/http/GrowthbeatHttpClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public deleteForArray(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    const-string v0, "DELETE"

    .line 101
    invoke-virtual {p0, v0, p1, p2}, Lcom/growthbeat/http/GrowthbeatHttpClient;->requestForArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public deleteForArray(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    const-string v0, "DELETE"

    .line 105
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/growthbeat/http/GrowthbeatHttpClient;->requestForArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "GET"

    .line 22
    invoke-virtual {p0, v0, p1, p2}, Lcom/growthbeat/http/GrowthbeatHttpClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "GET"

    .line 26
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/growthbeat/http/GrowthbeatHttpClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getForArray(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    const-string v0, "GET"

    .line 77
    invoke-virtual {p0, v0, p1, p2}, Lcom/growthbeat/http/GrowthbeatHttpClient;->requestForArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public getForArray(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    const-string v0, "GET"

    .line 81
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/growthbeat/http/GrowthbeatHttpClient;->requestForArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "POST"

    .line 30
    invoke-virtual {p0, v0, p1, p2}, Lcom/growthbeat/http/GrowthbeatHttpClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "POST"

    .line 34
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/growthbeat/http/GrowthbeatHttpClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public postForArray(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    const-string v0, "POST"

    .line 85
    invoke-virtual {p0, v0, p1, p2}, Lcom/growthbeat/http/GrowthbeatHttpClient;->requestForArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public postForArray(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    const-string v0, "POST"

    .line 89
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/growthbeat/http/GrowthbeatHttpClient;->requestForArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "PUT"

    .line 38
    invoke-virtual {p0, v0, p1, p2}, Lcom/growthbeat/http/GrowthbeatHttpClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "PUT"

    .line 42
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/growthbeat/http/GrowthbeatHttpClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public putForArray(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    const-string v0, "PUT"

    .line 93
    invoke-virtual {p0, v0, p1, p2}, Lcom/growthbeat/http/GrowthbeatHttpClient;->requestForArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public putForArray(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    const-string v0, "PUT"

    .line 97
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/growthbeat/http/GrowthbeatHttpClient;->requestForArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method protected request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 54
    invoke-static {p1}, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->valueOf(Ljava/lang/String;)Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    move-result-object p1

    invoke-super {p0, p1, p2, p3}, Lcom/growthbeat/http/BaseHttpClient;->request(Lcom/growthbeat/http/BaseHttpClient$RequestMethod;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Lcom/growthbeat/http/GrowthbeatHttpClient;->fetchJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 59
    invoke-static {p1}, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->valueOf(Ljava/lang/String;)Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    move-result-object p1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/growthbeat/http/BaseHttpClient;->request(Lcom/growthbeat/http/BaseHttpClient$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Lcom/growthbeat/http/GrowthbeatHttpClient;->fetchJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected requestForArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 109
    invoke-static {p1}, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->valueOf(Ljava/lang/String;)Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    move-result-object p1

    invoke-super {p0, p1, p2, p3}, Lcom/growthbeat/http/BaseHttpClient;->request(Lcom/growthbeat/http/BaseHttpClient$RequestMethod;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-direct {p0, p1}, Lcom/growthbeat/http/GrowthbeatHttpClient;->fetchJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method protected requestForArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 114
    invoke-static {p1}, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->valueOf(Ljava/lang/String;)Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    move-result-object p1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/growthbeat/http/BaseHttpClient;->request(Lcom/growthbeat/http/BaseHttpClient$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Lcom/growthbeat/http/GrowthbeatHttpClient;->fetchJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method
