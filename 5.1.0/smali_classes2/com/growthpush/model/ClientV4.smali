.class public Lcom/growthpush/model/ClientV4;
.super Lcom/growthbeat/model/Model;
.source "ClientV4.java"


# instance fields
.field private applicationId:Ljava/lang/String;

.field private created:Ljava/util/Date;

.field private environment:Lcom/growthpush/model/Environment;

.field private id:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/growthbeat/model/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/growthbeat/model/Model;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/growthpush/model/ClientV4;->setJsonObject(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static attach(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/growthpush/model/Environment;)Lcom/growthpush/model/ClientV4;
    .locals 2

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "applicationId"

    .line 64
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "credentialId"

    .line 66
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "token"

    .line 68
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p4, :cond_3

    .line 70
    invoke-virtual {p4}, Lcom/growthpush/model/Environment;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "environment"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string p1, "os"

    const-string p2, "android"

    .line 71
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object p1

    invoke-virtual {p1}, Lcom/growthpush/GrowthPush;->getHttpClient()Lcom/growthbeat/http/GrowthbeatHttpClient;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "4/clients/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/attach"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/growthbeat/http/GrowthbeatHttpClient;->put(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    .line 75
    new-instance p1, Lcom/growthpush/model/ClientV4;

    invoke-direct {p1, p0}, Lcom/growthpush/model/ClientV4;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public static clear()V
    .locals 2

    .line 57
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthpush/GrowthPush;->getPreference()Lcom/growthbeat/Preference;

    move-result-object v0

    const-class v1, Lcom/growthpush/model/ClientV4;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/growthbeat/Preference;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static load()Lcom/growthpush/model/ClientV4;
    .locals 2

    .line 36
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthpush/GrowthPush;->getPreference()Lcom/growthbeat/Preference;

    move-result-object v0

    const-class v1, Lcom/growthpush/model/ClientV4;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/growthbeat/Preference;->get(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    new-instance v1, Lcom/growthpush/model/ClientV4;

    invoke-direct {v1}, Lcom/growthpush/model/ClientV4;-><init>()V

    .line 41
    invoke-virtual {v1, v0}, Lcom/growthpush/model/ClientV4;->setJsonObject(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public static declared-synchronized save(Lcom/growthpush/model/ClientV4;)V
    .locals 3

    const-class v0, Lcom/growthpush/model/ClientV4;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 52
    :try_start_0
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthpush/GrowthPush;->getPreference()Lcom/growthbeat/Preference;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/growthpush/model/ClientV4;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/growthbeat/Preference;->save(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 50
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
.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/growthpush/model/ClientV4;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/growthpush/model/ClientV4;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getEnvironment()Lcom/growthpush/model/Environment;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/growthpush/model/ClientV4;->environment:Lcom/growthpush/model/Environment;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/growthpush/model/ClientV4;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 121
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 123
    invoke-virtual {p0}, Lcom/growthpush/model/ClientV4;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "applicationId"

    .line 124
    invoke-virtual {p0}, Lcom/growthpush/model/ClientV4;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "token"

    .line 125
    invoke-virtual {p0}, Lcom/growthpush/model/ClientV4;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {p0}, Lcom/growthpush/model/ClientV4;->getEnvironment()Lcom/growthpush/model/Environment;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "environment"

    .line 127
    invoke-virtual {p0}, Lcom/growthpush/model/ClientV4;->getEnvironment()Lcom/growthpush/model/Environment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/growthpush/model/Environment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/growthpush/model/ClientV4;->getCreated()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "created"

    .line 129
    invoke-virtual {p0}, Lcom/growthpush/model/ClientV4;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/growthbeat/utils/DateUtils;->formatToDateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/growthpush/model/ClientV4;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/growthpush/model/ClientV4;->applicationId:Ljava/lang/String;

    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/growthpush/model/ClientV4;->created:Ljava/util/Date;

    return-void
.end method

.method public setEnvironment(Lcom/growthpush/model/Environment;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/growthpush/model/ClientV4;->environment:Lcom/growthpush/model/Environment;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/growthpush/model/ClientV4;->id:Ljava/lang/String;

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "created"

    const-string v1, "environment"

    const-string v2, "token"

    const-string v3, "applicationId"

    const-string v4, "id"

    if-nez p1, :cond_0

    return-void

    .line 145
    :cond_0
    :try_start_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 146
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/growthpush/model/ClientV4;->setId(Ljava/lang/String;)V

    .line 147
    :cond_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/growthpush/model/ClientV4;->setApplicationId(Ljava/lang/String;)V

    .line 149
    :cond_2
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/growthpush/model/ClientV4;->setToken(Ljava/lang/String;)V

    .line 151
    :cond_3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 152
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/growthpush/model/Environment;->valueOf(Ljava/lang/String;)Lcom/growthpush/model/Environment;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/growthpush/model/ClientV4;->setEnvironment(Lcom/growthpush/model/Environment;)V

    .line 153
    :cond_4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 154
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/growthbeat/utils/DateUtils;->parseFromDateTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthpush/model/ClientV4;->setCreated(Ljava/util/Date;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    .line 156
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to parse JSON."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/growthpush/model/ClientV4;->token:Ljava/lang/String;

    return-void
.end method
