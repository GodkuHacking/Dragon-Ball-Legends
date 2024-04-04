.class public Lcom/growthbeat/message/model/Task;
.super Lcom/growthbeat/model/Model;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/growthbeat/message/model/Task$Orientation;
    }
.end annotation


# instance fields
.field private applicationId:Ljava/lang/String;

.field private begin:Ljava/util/Date;

.field private capacity:Ljava/lang/Integer;

.field private created:Ljava/util/Date;

.field private end:Ljava/util/Date;

.field private goalId:I

.field private id:Ljava/lang/String;

.field private orientation:Lcom/growthbeat/message/model/Task$Orientation;

.field private segmentId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/growthbeat/model/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/growthbeat/model/Model;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static createList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/growthbeat/message/model/Task;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 57
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 59
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 60
    new-instance v3, Lcom/growthbeat/message/model/Task;

    invoke-direct {v3, v2}, Lcom/growthbeat/message/model/Task;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 62
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getTasks(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/growthbeat/message/model/Task;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "applicationId"

    .line 41
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "credentialId"

    .line 43
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "goalId"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object p0

    invoke-virtual {p0}, Lcom/growthpush/GrowthPush;->getHttpClient()Lcom/growthbeat/http/GrowthbeatHttpClient;

    move-result-object p0

    const-string p1, "4/tasks"

    invoke-virtual {p0, p1, v0}, Lcom/growthbeat/http/GrowthbeatHttpClient;->getForArray(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/growthbeat/message/model/Task;->createList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/growthbeat/message/model/Task;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getBegin()Ljava/util/Date;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/growthbeat/message/model/Task;->begin:Ljava/util/Date;

    return-object v0
.end method

.method public getCapacity()Ljava/lang/Integer;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/growthbeat/message/model/Task;->capacity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/growthbeat/message/model/Task;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getEnd()Ljava/util/Date;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/growthbeat/message/model/Task;->end:Ljava/util/Date;

    return-object v0
.end method

.method public getGoalId()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/growthbeat/message/model/Task;->goalId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/growthbeat/message/model/Task;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 143
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/growthbeat/message/model/Task;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "id"

    .line 147
    iget-object v2, p0, Lcom/growthbeat/message/model/Task;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/growthbeat/message/model/Task;->applicationId:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "applicationId"

    .line 149
    iget-object v2, p0, Lcom/growthbeat/message/model/Task;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    :cond_1
    iget v1, p0, Lcom/growthbeat/message/model/Task;->goalId:I

    if-lez v1, :cond_2

    const-string v1, "goalId"

    .line 151
    iget v2, p0, Lcom/growthbeat/message/model/Task;->goalId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/growthbeat/message/model/Task;->segmentId:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const-string v1, "segmentId"

    .line 153
    iget-object v2, p0, Lcom/growthbeat/message/model/Task;->segmentId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    :cond_3
    iget-object v1, p0, Lcom/growthbeat/message/model/Task;->orientation:Lcom/growthbeat/message/model/Task$Orientation;

    if-eqz v1, :cond_4

    const-string v1, "orientation"

    .line 155
    iget-object v2, p0, Lcom/growthbeat/message/model/Task;->orientation:Lcom/growthbeat/message/model/Task$Orientation;

    invoke-virtual {v2}, Lcom/growthbeat/message/model/Task$Orientation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_4
    iget-object v1, p0, Lcom/growthbeat/message/model/Task;->begin:Ljava/util/Date;

    if-eqz v1, :cond_5

    const-string v1, "begin"

    .line 157
    iget-object v2, p0, Lcom/growthbeat/message/model/Task;->begin:Ljava/util/Date;

    invoke-static {v2}, Lcom/growthbeat/utils/DateUtils;->formatToDateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    :cond_5
    iget-object v1, p0, Lcom/growthbeat/message/model/Task;->end:Ljava/util/Date;

    if-eqz v1, :cond_6

    const-string v1, "end"

    .line 159
    iget-object v2, p0, Lcom/growthbeat/message/model/Task;->end:Ljava/util/Date;

    invoke-static {v2}, Lcom/growthbeat/utils/DateUtils;->formatToDateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_6
    iget-object v1, p0, Lcom/growthbeat/message/model/Task;->capacity:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const-string v1, "capacity"

    .line 161
    iget-object v2, p0, Lcom/growthbeat/message/model/Task;->capacity:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    :cond_7
    iget-object v1, p0, Lcom/growthbeat/message/model/Task;->created:Ljava/util/Date;

    if-eqz v1, :cond_8

    const-string v1, "created"

    .line 163
    iget-object v2, p0, Lcom/growthbeat/message/model/Task;->created:Ljava/util/Date;

    invoke-static {v2}, Lcom/growthbeat/utils/DateUtils;->formatToDateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-object v0

    .line 165
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to get JSON."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOrientation()Lcom/growthbeat/message/model/Task$Orientation;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/growthbeat/message/model/Task;->orientation:Lcom/growthbeat/message/model/Task$Orientation;

    return-object v0
.end method

.method public getSegmentId()Ljava/lang/Integer;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/growthbeat/message/model/Task;->segmentId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/growthbeat/message/model/Task;->applicationId:Ljava/lang/String;

    return-void
.end method

.method public setBegin(Ljava/util/Date;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/growthbeat/message/model/Task;->begin:Ljava/util/Date;

    return-void
.end method

.method public setCapacity(Ljava/lang/Integer;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/growthbeat/message/model/Task;->capacity:Ljava/lang/Integer;

    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/growthbeat/message/model/Task;->created:Ljava/util/Date;

    return-void
.end method

.method public setEnd(Ljava/util/Date;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/growthbeat/message/model/Task;->end:Ljava/util/Date;

    return-void
.end method

.method public setGoalId(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/growthbeat/message/model/Task;->goalId:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/growthbeat/message/model/Task;->id:Ljava/lang/String;

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 10

    const-string v0, "created"

    const-string v1, "capacity"

    const-string v2, "end"

    const-string v3, "begin"

    const-string v4, "orientation"

    const-string v5, "segmentId"

    const-string v6, "goalId"

    const-string v7, "applicationId"

    const-string v8, "id"

    if-nez p1, :cond_0

    return-void

    .line 179
    :cond_0
    :try_start_0
    invoke-static {p1, v8}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 180
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/growthbeat/message/model/Task;->setId(Ljava/lang/String;)V

    .line 181
    :cond_1
    invoke-static {p1, v7}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 182
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/growthbeat/message/model/Task;->setApplicationId(Ljava/lang/String;)V

    .line 183
    :cond_2
    invoke-static {p1, v6}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 184
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/growthbeat/message/model/Task;->setGoalId(I)V

    .line 185
    :cond_3
    invoke-static {p1, v5}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 186
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/growthbeat/message/model/Task;->setSegmentId(Ljava/lang/Integer;)V

    .line 187
    :cond_4
    invoke-static {p1, v4}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 188
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/growthbeat/message/model/Task$Orientation;->valueOf(Ljava/lang/String;)Lcom/growthbeat/message/model/Task$Orientation;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/growthbeat/message/model/Task;->setOrientation(Lcom/growthbeat/message/model/Task$Orientation;)V

    .line 189
    :cond_5
    invoke-static {p1, v3}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    if-eqz v4, :cond_6

    .line 190
    :try_start_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/growthbeat/utils/DateUtils;->parseFromDateTimeStringWithFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/growthbeat/message/model/Task;->setBegin(Ljava/util/Date;)V

    .line 191
    :cond_6
    invoke-static {p1, v2}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 192
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/growthbeat/utils/DateUtils;->parseFromDateTimeStringWithFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/growthbeat/message/model/Task;->setEnd(Ljava/util/Date;)V

    .line 193
    :cond_7
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 194
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/growthbeat/message/model/Task;->setCapacity(Ljava/lang/Integer;)V

    .line 195
    :cond_8
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 196
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/growthbeat/utils/DateUtils;->parseFromDateTimeStringWithFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/message/model/Task;->setCreated(Ljava/util/Date;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    return-void

    :catch_0
    move-exception p1

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse JSON."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setOrientation(Lcom/growthbeat/message/model/Task$Orientation;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/growthbeat/message/model/Task;->orientation:Lcom/growthbeat/message/model/Task$Orientation;

    return-void
.end method

.method public setSegmentId(Ljava/lang/Integer;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/growthbeat/message/model/Task;->segmentId:Ljava/lang/Integer;

    return-void
.end method
