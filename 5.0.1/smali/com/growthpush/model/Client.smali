.class public Lcom/growthpush/model/Client;
.super Lcom/growthbeat/model/Model;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/growthpush/model/Client$Status;
    }
.end annotation


# instance fields
.field private applicationId:I

.field private code:Ljava/lang/String;

.field private created:Ljava/util/Date;

.field private environment:Lcom/growthpush/model/Environment;

.field private growthbeatClientId:Ljava/lang/String;

.field private id:J

.field private status:Lcom/growthpush/model/Client$Status;

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
    invoke-virtual {p0, p1}, Lcom/growthpush/model/Client;->setJsonObject(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static clear()V
    .locals 2

    .line 57
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthpush/GrowthPush;->getPreference()Lcom/growthbeat/Preference;

    move-result-object v0

    const-class v1, Lcom/growthpush/model/Client;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/growthbeat/Preference;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/growthpush/model/Environment;)Lcom/growthpush/model/Client;
    .locals 1

    .line 62
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "clientId"

    .line 63
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "credentialId"

    .line 64
    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "token"

    .line 65
    invoke-interface {p1, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {p4}, Lcom/growthpush/model/Environment;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "environment"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "os"

    const-string p2, "android"

    .line 67
    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object p0

    invoke-virtual {p0}, Lcom/growthpush/GrowthPush;->getHttpClient()Lcom/growthbeat/http/GrowthbeatHttpClient;

    move-result-object p0

    const-string p2, "3/clients"

    invoke-virtual {p0, p2, p1}, Lcom/growthbeat/http/GrowthbeatHttpClient;->post(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    .line 70
    new-instance p1, Lcom/growthpush/model/Client;

    invoke-direct {p1, p0}, Lcom/growthpush/model/Client;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public static load()Lcom/growthpush/model/Client;
    .locals 2

    .line 36
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthpush/GrowthPush;->getPreference()Lcom/growthbeat/Preference;

    move-result-object v0

    const-class v1, Lcom/growthpush/model/Client;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/growthbeat/Preference;->get(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    new-instance v1, Lcom/growthpush/model/Client;

    invoke-direct {v1}, Lcom/growthpush/model/Client;-><init>()V

    .line 41
    invoke-virtual {v1, v0}, Lcom/growthpush/model/Client;->setJsonObject(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public static declared-synchronized save(Lcom/growthpush/model/Client;)V
    .locals 3

    const-class v0, Lcom/growthpush/model/Client;

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

    invoke-virtual {p0}, Lcom/growthpush/model/Client;->getJsonObject()Lorg/json/JSONObject;

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

.method public static update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/growthpush/model/Environment;)Lcom/growthpush/model/Client;
    .locals 2

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "credentialId"

    .line 77
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "token"

    .line 78
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p3}, Lcom/growthpush/model/Environment;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "environment"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object p1

    invoke-virtual {p1}, Lcom/growthpush/GrowthPush;->getHttpClient()Lcom/growthbeat/http/GrowthbeatHttpClient;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "3/clients/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/growthbeat/http/GrowthbeatHttpClient;->put(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    .line 83
    new-instance p1, Lcom/growthpush/model/Client;

    invoke-direct {p1, p0}, Lcom/growthpush/model/Client;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method


# virtual methods
.method public getApplicationId()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/growthpush/model/Client;->applicationId:I

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/growthpush/model/Client;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/growthpush/model/Client;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getEnvironment()Lcom/growthpush/model/Environment;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/growthpush/model/Client;->environment:Lcom/growthpush/model/Environment;

    return-object v0
.end method

.method public getGrowthbeatClientId()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/growthpush/model/Client;->growthbeatClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/growthpush/model/Client;->id:J

    return-wide v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 4

    .line 153
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 155
    invoke-virtual {p0}, Lcom/growthpush/model/Client;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "growthbeatClientId"

    .line 156
    invoke-virtual {p0}, Lcom/growthpush/model/Client;->getGrowthbeatClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "applicationId"

    .line 157
    invoke-virtual {p0}, Lcom/growthpush/model/Client;->getApplicationId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "code"

    .line 158
    invoke-virtual {p0}, Lcom/growthpush/model/Client;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "token"

    .line 159
    invoke-virtual {p0}, Lcom/growthpush/model/Client;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    invoke-virtual {p0}, Lcom/growthpush/model/Client;->getEnvironment()Lcom/growthpush/model/Environment;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "environment"

    .line 161
    invoke-virtual {p0}, Lcom/growthpush/model/Client;->getEnvironment()Lcom/growthpush/model/Environment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/growthpush/model/Environment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/growthpush/model/Client;->getStatus()Lcom/growthpush/model/Client$Status;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "status"

    .line 163
    invoke-virtual {p0}, Lcom/growthpush/model/Client;->getStatus()Lcom/growthpush/model/Client$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/growthpush/model/Client$Status;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/growthpush/model/Client;->getCreated()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "created"

    .line 165
    invoke-virtual {p0}, Lcom/growthpush/model/Client;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/growthbeat/utils/DateUtils;->formatToDateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/growthpush/model/Client$Status;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/growthpush/model/Client;->status:Lcom/growthpush/model/Client$Status;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/growthpush/model/Client;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setApplicationId(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/growthpush/model/Client;->applicationId:I

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/growthpush/model/Client;->code:Ljava/lang/String;

    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/growthpush/model/Client;->created:Ljava/util/Date;

    return-void
.end method

.method public setEnvironment(Lcom/growthpush/model/Environment;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/growthpush/model/Client;->environment:Lcom/growthpush/model/Environment;

    return-void
.end method

.method public setGrowthbeatClientId(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/growthpush/model/Client;->growthbeatClientId:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 91
    iput-wide p1, p0, Lcom/growthpush/model/Client;->id:J

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 9

    const-string v0, "created"

    const-string v1, "status"

    const-string v2, "environment"

    const-string v3, "token"

    const-string v4, "code"

    const-string v5, "applicationId"

    const-string v6, "growthbeatClientId"

    const-string v7, "id"

    if-nez p1, :cond_0

    return-void

    .line 181
    :cond_0
    :try_start_0
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 182
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lcom/growthpush/model/Client;->setId(J)V

    .line 183
    :cond_1
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 184
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/growthpush/model/Client;->setGrowthbeatClientId(Ljava/lang/String;)V

    .line 185
    :cond_2
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 186
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/growthpush/model/Client;->setApplicationId(I)V

    .line 187
    :cond_3
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 188
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/growthpush/model/Client;->setCode(Ljava/lang/String;)V

    .line 189
    :cond_4
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 190
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/growthpush/model/Client;->setToken(Ljava/lang/String;)V

    .line 191
    :cond_5
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 192
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/growthpush/model/Environment;->valueOf(Ljava/lang/String;)Lcom/growthpush/model/Environment;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/growthpush/model/Client;->setEnvironment(Lcom/growthpush/model/Environment;)V

    .line 193
    :cond_6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 194
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/growthpush/model/Client$Status;->valueOf(Ljava/lang/String;)Lcom/growthpush/model/Client$Status;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/growthpush/model/Client;->setStatus(Lcom/growthpush/model/Client$Status;)V

    .line 195
    :cond_7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 196
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/growthbeat/utils/DateUtils;->parseFromDateTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthpush/model/Client;->setCreated(Ljava/util/Date;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-void

    .line 198
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to parse JSON."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStatus(Lcom/growthpush/model/Client$Status;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/growthpush/model/Client;->status:Lcom/growthpush/model/Client$Status;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/growthpush/model/Client;->token:Ljava/lang/String;

    return-void
.end method
