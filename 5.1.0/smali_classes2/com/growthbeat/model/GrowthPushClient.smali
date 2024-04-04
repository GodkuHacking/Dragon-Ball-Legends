.class public Lcom/growthbeat/model/GrowthPushClient;
.super Lcom/growthbeat/model/Model;
.source "GrowthPushClient.java"


# static fields
.field private static final PREFERENCE_CLIENT_KEY:Ljava/lang/String; = "client"

.field private static final PREFERENCE_DEFAULT_FILE_NAME:Ljava/lang/String; = "growthpush-preferences"

.field private static final preference:Lcom/growthbeat/Preference;


# instance fields
.field private applicationId:I

.field private code:Ljava/lang/String;

.field private created:Ljava/util/Date;

.field private environment:Ljava/lang/String;

.field private growthbeatApplicationId:Ljava/lang/String;

.field private growthbeatClientId:Ljava/lang/String;

.field private id:J

.field private status:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/growthbeat/Preference;

    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/Growthbeat;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "growthpush-preferences"

    invoke-direct {v0, v1, v2}, Lcom/growthbeat/Preference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/growthbeat/model/GrowthPushClient;->preference:Lcom/growthbeat/Preference;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/growthbeat/model/Model;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static findByGrowthPushClientId(JLjava/lang/String;)Lcom/growthbeat/model/GrowthPushClient;
    .locals 3

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    .line 57
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object p2

    invoke-virtual {p2}, Lcom/growthpush/GrowthPush;->getHttpClient()Lcom/growthbeat/http/GrowthbeatHttpClient;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1/clients/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, v0}, Lcom/growthbeat/http/GrowthbeatHttpClient;->get(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_0
    new-instance p1, Lcom/growthbeat/model/GrowthPushClient;

    invoke-direct {p1, p0}, Lcom/growthbeat/model/GrowthPushClient;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public static load()Lcom/growthbeat/model/GrowthPushClient;
    .locals 2

    .line 38
    sget-object v0, Lcom/growthbeat/model/GrowthPushClient;->preference:Lcom/growthbeat/Preference;

    const-string v1, "client"

    invoke-virtual {v0, v1}, Lcom/growthbeat/Preference;->get(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    new-instance v1, Lcom/growthbeat/model/GrowthPushClient;

    invoke-direct {v1, v0}, Lcom/growthbeat/model/GrowthPushClient;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public static removeClient()V
    .locals 2

    .line 51
    sget-object v0, Lcom/growthbeat/model/GrowthPushClient;->preference:Lcom/growthbeat/Preference;

    const-string v1, "client"

    invoke-virtual {v0, v1}, Lcom/growthbeat/Preference;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static removePreference()V
    .locals 1

    .line 47
    sget-object v0, Lcom/growthbeat/model/GrowthPushClient;->preference:Lcom/growthbeat/Preference;

    invoke-virtual {v0}, Lcom/growthbeat/Preference;->removeAll()V

    return-void
.end method


# virtual methods
.method public getApplicationId()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/growthbeat/model/GrowthPushClient;->applicationId:I

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/growthbeat/model/GrowthPushClient;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/growthbeat/model/GrowthPushClient;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/growthbeat/model/GrowthPushClient;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public getGrowthbeatApplicationId()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/growthbeat/model/GrowthPushClient;->growthbeatApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getGrowthbeatClientId()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/growthbeat/model/GrowthPushClient;->growthbeatClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/growthbeat/model/GrowthPushClient;->id:J

    return-wide v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 4

    .line 70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 72
    iget-wide v2, p0, Lcom/growthbeat/model/GrowthPushClient;->id:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "applicationId"

    .line 73
    iget v2, p0, Lcom/growthbeat/model/GrowthPushClient;->applicationId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    iget-object v1, p0, Lcom/growthbeat/model/GrowthPushClient;->code:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "code"

    .line 75
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/growthbeat/model/GrowthPushClient;->growthbeatClientId:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "growthbeatClientId"

    .line 77
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/growthbeat/model/GrowthPushClient;->growthbeatApplicationId:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "growthbeatApplicationId"

    .line 79
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/growthbeat/model/GrowthPushClient;->token:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "token"

    .line 81
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    :cond_3
    iget-object v1, p0, Lcom/growthbeat/model/GrowthPushClient;->environment:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "environment"

    .line 83
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    :cond_4
    iget-object v1, p0, Lcom/growthbeat/model/GrowthPushClient;->status:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "status"

    .line 85
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    :cond_5
    iget-object v1, p0, Lcom/growthbeat/model/GrowthPushClient;->created:Ljava/util/Date;

    if-eqz v1, :cond_6

    const-string v2, "created"

    .line 87
    invoke-static {v1}, Lcom/growthbeat/utils/DateUtils;->formatToDateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/growthbeat/model/GrowthPushClient;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/growthbeat/model/GrowthPushClient;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setApplicationId(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/growthbeat/model/GrowthPushClient;->applicationId:I

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/growthbeat/model/GrowthPushClient;->code:Ljava/lang/String;

    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/growthbeat/model/GrowthPushClient;->created:Ljava/util/Date;

    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/growthbeat/model/GrowthPushClient;->environment:Ljava/lang/String;

    return-void
.end method

.method public setGrowthbeatApplicationId(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/growthbeat/model/GrowthPushClient;->growthbeatApplicationId:Ljava/lang/String;

    return-void
.end method

.method public setGrowthbeatClientId(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/growthbeat/model/GrowthPushClient;->growthbeatClientId:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 132
    iput-wide p1, p0, Lcom/growthbeat/model/GrowthPushClient;->id:J

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 10

    const-string v0, "created"

    const-string v1, "status"

    const-string v2, "environment"

    const-string v3, "token"

    const-string v4, "growthbeatApplicationId"

    const-string v5, "growthbeatClientId"

    const-string v6, "code"

    const-string v7, "applicationId"

    const-string v8, "id"

    if-nez p1, :cond_0

    return-void

    .line 103
    :cond_0
    :try_start_0
    invoke-static {p1, v8}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 104
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/growthbeat/model/GrowthPushClient;->setId(J)V

    .line 105
    :cond_1
    invoke-static {p1, v7}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 106
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/growthbeat/model/GrowthPushClient;->setApplicationId(I)V

    .line 107
    :cond_2
    invoke-static {p1, v6}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 108
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/growthbeat/model/GrowthPushClient;->setCode(Ljava/lang/String;)V

    .line 109
    :cond_3
    invoke-static {p1, v5}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 110
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/growthbeat/model/GrowthPushClient;->setGrowthbeatClientId(Ljava/lang/String;)V

    .line 111
    :cond_4
    invoke-static {p1, v4}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 112
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/growthbeat/model/GrowthPushClient;->setGrowthbeatApplicationId(Ljava/lang/String;)V

    .line 113
    :cond_5
    invoke-static {p1, v3}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 114
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/growthbeat/model/GrowthPushClient;->setToken(Ljava/lang/String;)V

    .line 115
    :cond_6
    invoke-static {p1, v2}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 116
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/growthbeat/model/GrowthPushClient;->setEnvironment(Ljava/lang/String;)V

    .line 117
    :cond_7
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 118
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/growthbeat/model/GrowthPushClient;->setStatus(Ljava/lang/String;)V

    .line 119
    :cond_8
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 120
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/growthbeat/utils/DateUtils;->parseFromDateTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/model/GrowthPushClient;->setCreated(Ljava/util/Date;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-void

    .line 122
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to parse JSON."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/growthbeat/model/GrowthPushClient;->status:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/growthbeat/model/GrowthPushClient;->token:Ljava/lang/String;

    return-void
.end method
