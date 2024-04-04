.class public Lcom/growthbeat/model/Client;
.super Lcom/growthbeat/model/Model;
.source "Client.java"


# instance fields
.field private application:Lcom/growthbeat/model/Application;

.field private created:Ljava/util/Date;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/growthbeat/model/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/growthbeat/model/Model;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/growthbeat/model/Client;
    .locals 2

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "applicationId"

    .line 50
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "credentialId"

    .line 51
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/growthbeat/Growthbeat;->getHttpClient()Lcom/growthbeat/http/GrowthbeatHttpClient;

    move-result-object p0

    const-string p1, "1/clients"

    invoke-virtual {p0, p1, v0}, Lcom/growthbeat/http/GrowthbeatHttpClient;->post(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_0
    new-instance p1, Lcom/growthbeat/model/Client;

    invoke-direct {p1, p0}, Lcom/growthbeat/model/Client;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public static findById(Ljava/lang/String;Ljava/lang/String;)Lcom/growthbeat/model/Client;
    .locals 3

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "credentialId"

    .line 64
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/growthbeat/Growthbeat;->getHttpClient()Lcom/growthbeat/http/GrowthbeatHttpClient;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1/clients/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/growthbeat/http/GrowthbeatHttpClient;->get(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_0
    new-instance p1, Lcom/growthbeat/model/Client;

    invoke-direct {p1, p0}, Lcom/growthbeat/model/Client;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public static load()Lcom/growthbeat/model/Client;
    .locals 2

    .line 30
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/Growthbeat;->getPreference()Lcom/growthbeat/Preference;

    move-result-object v0

    const-class v1, Lcom/growthbeat/model/Client;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/growthbeat/Preference;->get(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_0
    new-instance v1, Lcom/growthbeat/model/Client;

    invoke-direct {v1, v0}, Lcom/growthbeat/model/Client;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public static declared-synchronized save(Lcom/growthbeat/model/Client;)V
    .locals 3

    const-class v0, Lcom/growthbeat/model/Client;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 43
    :try_start_0
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/Growthbeat;->getPreference()Lcom/growthbeat/Preference;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/growthbeat/model/Client;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/growthbeat/Preference;->save(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 41
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument client cannot be null."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getApplication()Lcom/growthbeat/model/Application;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/growthbeat/model/Client;->application:Lcom/growthbeat/model/Application;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/growthbeat/model/Client;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/growthbeat/model/Client;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 101
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/growthbeat/model/Client;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "id"

    .line 104
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/growthbeat/model/Client;->created:Ljava/util/Date;

    if-eqz v1, :cond_1

    const-string v2, "created"

    .line 106
    invoke-static {v1}, Lcom/growthbeat/utils/DateUtils;->formatToDateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/growthbeat/model/Client;->application:Lcom/growthbeat/model/Application;

    if-eqz v1, :cond_2

    const-string v2, "application"

    .line 108
    invoke-virtual {v1}, Lcom/growthbeat/model/Application;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setApplication(Lcom/growthbeat/model/Application;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/growthbeat/model/Client;->application:Lcom/growthbeat/model/Application;

    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/growthbeat/model/Client;->created:Ljava/util/Date;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/growthbeat/model/Client;->id:Ljava/lang/String;

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "application"

    const-string v1, "created"

    const-string v2, "id"

    if-nez p1, :cond_0

    return-void

    .line 124
    :cond_0
    :try_start_0
    invoke-static {p1, v2}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/growthbeat/model/Client;->setId(Ljava/lang/String;)V

    .line 126
    :cond_1
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/growthbeat/utils/DateUtils;->parseFromDateTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/growthbeat/model/Client;->setCreated(Ljava/util/Date;)V

    .line 128
    :cond_2
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    new-instance v1, Lcom/growthbeat/model/Application;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/growthbeat/model/Application;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v1}, Lcom/growthbeat/model/Client;->setApplication(Lcom/growthbeat/model/Application;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    .line 131
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to parse JSON."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
