.class public Lcom/growthbeat/message/model/Message;
.super Lcom/growthbeat/model/Model;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/growthbeat/message/model/Message$MessageType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/growthbeat/message/model/Message;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private background:Lcom/growthbeat/message/model/Background;

.field private buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/growthbeat/message/model/Button;",
            ">;"
        }
    .end annotation
.end field

.field private created:Ljava/util/Date;

.field private id:Ljava/lang/String;

.field private task:Lcom/growthbeat/message/model/Task;

.field private type:Lcom/growthbeat/message/model/Message$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/growthbeat/message/model/Message$1;

    invoke-direct {v0}, Lcom/growthbeat/message/model/Message$1;-><init>()V

    sput-object v0, Lcom/growthbeat/message/model/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/growthbeat/model/Model;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/growthbeat/model/Model;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static getFromJsonObject(Lorg/json/JSONObject;)Lcom/growthbeat/message/model/Message;
    .locals 2

    .line 63
    new-instance v0, Lcom/growthbeat/message/model/Message;

    invoke-direct {v0, p0}, Lcom/growthbeat/message/model/Message;-><init>(Lorg/json/JSONObject;)V

    .line 64
    invoke-virtual {v0}, Lcom/growthbeat/message/model/Message;->getType()Lcom/growthbeat/message/model/Message$MessageType;

    move-result-object v1

    if-nez v1, :cond_0

    .line 65
    new-instance p0, Lcom/growthbeat/message/model/NoContentMessage;

    invoke-direct {p0}, Lcom/growthbeat/message/model/NoContentMessage;-><init>()V

    return-object p0

    .line 67
    :cond_0
    sget-object v1, Lcom/growthbeat/message/model/Message$2;->$SwitchMap$com$growthbeat$message$model$Message$MessageType:[I

    invoke-virtual {v0}, Lcom/growthbeat/message/model/Message;->getType()Lcom/growthbeat/message/model/Message$MessageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/message/model/Message$MessageType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 75
    new-instance p0, Lcom/growthbeat/message/model/NoContentMessage;

    invoke-direct {p0}, Lcom/growthbeat/message/model/NoContentMessage;-><init>()V

    return-object p0

    .line 73
    :cond_1
    new-instance v0, Lcom/growthbeat/message/model/SwipeMessage;

    invoke-direct {v0, p0}, Lcom/growthbeat/message/model/SwipeMessage;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .line 71
    :cond_2
    new-instance v0, Lcom/growthbeat/message/model/CardMessage;

    invoke-direct {v0, p0}, Lcom/growthbeat/message/model/CardMessage;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .line 69
    :cond_3
    new-instance v0, Lcom/growthbeat/message/model/PlainMessage;

    invoke-direct {v0, p0}, Lcom/growthbeat/message/model/PlainMessage;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static receive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/growthbeat/message/model/Message;
    .locals 2

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "taskId"

    .line 85
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "applicationId"

    .line 87
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "clientId"

    .line 89
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p3, :cond_3

    const-string p0, "credentialId"

    .line 91
    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_3
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object p0

    invoke-virtual {p0}, Lcom/growthpush/GrowthPush;->getHttpClient()Lcom/growthbeat/http/GrowthbeatHttpClient;

    move-result-object p0

    const-string p1, "4/receive"

    invoke-virtual {p0, p1, v0}, Lcom/growthbeat/http/GrowthbeatHttpClient;->get(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_4
    invoke-static {p0}, Lcom/growthbeat/message/model/Message;->getFromJsonObject(Lorg/json/JSONObject;)Lcom/growthbeat/message/model/Message;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBackground()Lcom/growthbeat/message/model/Background;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/growthbeat/message/model/Message;->background:Lcom/growthbeat/message/model/Background;

    return-object v0
.end method

.method public getButtons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/growthbeat/message/model/Button;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/growthbeat/message/model/Message;->buttons:Ljava/util/List;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/growthbeat/message/model/Message;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/growthbeat/message/model/Message;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 4

    .line 151
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/growthbeat/message/model/Message;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "id"

    .line 155
    iget-object v2, p0, Lcom/growthbeat/message/model/Message;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/growthbeat/message/model/Message;->type:Lcom/growthbeat/message/model/Message$MessageType;

    if-eqz v1, :cond_1

    const-string v1, "type"

    .line 157
    iget-object v2, p0, Lcom/growthbeat/message/model/Message;->type:Lcom/growthbeat/message/model/Message$MessageType;

    invoke-virtual {v2}, Lcom/growthbeat/message/model/Message$MessageType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/growthbeat/message/model/Message;->background:Lcom/growthbeat/message/model/Background;

    if-eqz v1, :cond_2

    const-string v1, "background"

    .line 159
    iget-object v2, p0, Lcom/growthbeat/message/model/Message;->background:Lcom/growthbeat/message/model/Background;

    invoke-virtual {v2}, Lcom/growthbeat/message/model/Background;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/growthbeat/message/model/Message;->created:Ljava/util/Date;

    if-eqz v1, :cond_3

    const-string v1, "created"

    .line 161
    iget-object v2, p0, Lcom/growthbeat/message/model/Message;->created:Ljava/util/Date;

    invoke-static {v2}, Lcom/growthbeat/utils/DateUtils;->formatToDateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/growthbeat/message/model/Message;->task:Lcom/growthbeat/message/model/Task;

    if-eqz v1, :cond_4

    const-string v1, "task"

    .line 163
    iget-object v2, p0, Lcom/growthbeat/message/model/Message;->task:Lcom/growthbeat/message/model/Task;

    invoke-virtual {v2}, Lcom/growthbeat/message/model/Task;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    :cond_4
    iget-object v1, p0, Lcom/growthbeat/message/model/Message;->buttons:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 165
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 166
    iget-object v2, p0, Lcom/growthbeat/message/model/Message;->buttons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/growthbeat/message/model/Button;

    .line 167
    invoke-virtual {v3}, Lcom/growthbeat/message/model/Button;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_5
    const-string v2, "buttons"

    .line 168
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-object v0

    :catch_0
    move-exception v0

    .line 171
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to get JSON."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTask()Lcom/growthbeat/message/model/Task;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/growthbeat/message/model/Message;->task:Lcom/growthbeat/message/model/Task;

    return-object v0
.end method

.method public getType()Lcom/growthbeat/message/model/Message$MessageType;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/growthbeat/message/model/Message;->type:Lcom/growthbeat/message/model/Message$MessageType;

    return-object v0
.end method

.method public setBackground(Lcom/growthbeat/message/model/Background;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/growthbeat/message/model/Message;->background:Lcom/growthbeat/message/model/Background;

    return-void
.end method

.method public setButtons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/growthbeat/message/model/Button;",
            ">;)V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/growthbeat/message/model/Message;->buttons:Ljava/util/List;

    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/growthbeat/message/model/Message;->created:Ljava/util/Date;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/growthbeat/message/model/Message;->id:Ljava/lang/String;

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "buttons"

    const-string v1, "task"

    const-string v2, "created"

    const-string v3, "background"

    const-string v4, "id"

    const-string v5, "type"

    if-nez p1, :cond_0

    return-void

    .line 185
    :cond_0
    :try_start_0
    invoke-static {p1, v5}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    return-void

    .line 188
    :cond_1
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/growthbeat/message/model/Message$MessageType;->valueOf(Ljava/lang/String;)Lcom/growthbeat/message/model/Message$MessageType;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/growthbeat/message/model/Message;->setType(Lcom/growthbeat/message/model/Message$MessageType;)V

    .line 189
    invoke-static {p1, v4}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 190
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/growthbeat/message/model/Message;->setId(Ljava/lang/String;)V

    .line 191
    :cond_2
    invoke-static {p1, v3}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 192
    new-instance v4, Lcom/growthbeat/message/model/Background;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/growthbeat/message/model/Background;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v4}, Lcom/growthbeat/message/model/Message;->setBackground(Lcom/growthbeat/message/model/Background;)V

    .line 193
    :cond_3
    invoke-static {p1, v2}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 194
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2, v3}, Lcom/growthbeat/utils/DateUtils;->parseFromDateTimeStringWithFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/growthbeat/message/model/Message;->setCreated(Ljava/util/Date;)V

    .line 195
    :cond_4
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 196
    new-instance v2, Lcom/growthbeat/message/model/Task;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/growthbeat/message/model/Task;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v2}, Lcom/growthbeat/message/model/Message;->setTask(Lcom/growthbeat/message/model/Task;)V

    .line 197
    :cond_5
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 200
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 201
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/growthbeat/message/model/Button;->getFromJsonObject(Lorg/json/JSONObject;)Lcom/growthbeat/message/model/Button;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_6
    invoke-virtual {p0, v1}, Lcom/growthbeat/message/model/Message;->setButtons(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-void

    :catch_0
    move-exception p1

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse JSON."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setTask(Lcom/growthbeat/message/model/Task;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/growthbeat/message/model/Message;->task:Lcom/growthbeat/message/model/Task;

    return-void
.end method

.method public setType(Lcom/growthbeat/message/model/Message$MessageType;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/growthbeat/message/model/Message;->type:Lcom/growthbeat/message/model/Message$MessageType;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 217
    invoke-virtual {p0}, Lcom/growthbeat/message/model/Message;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
