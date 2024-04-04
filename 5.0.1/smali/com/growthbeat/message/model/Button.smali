.class public Lcom/growthbeat/message/model/Button;
.super Lcom/growthbeat/model/Model;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/growthbeat/message/model/Button$ButtonType;
    }
.end annotation


# instance fields
.field private created:Ljava/util/Date;

.field private intent:Lcom/growthbeat/model/Intent;

.field private message:Lcom/growthbeat/message/model/Message;

.field private type:Lcom/growthbeat/message/model/Button$ButtonType;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/growthbeat/model/Model;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/growthbeat/model/Model;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static getFromJsonObject(Lorg/json/JSONObject;)Lcom/growthbeat/message/model/Button;
    .locals 2

    .line 30
    new-instance v0, Lcom/growthbeat/message/model/Button;

    invoke-direct {v0, p0}, Lcom/growthbeat/message/model/Button;-><init>(Lorg/json/JSONObject;)V

    .line 31
    sget-object v1, Lcom/growthbeat/message/model/Button$1;->$SwitchMap$com$growthbeat$message$model$Button$ButtonType:[I

    invoke-virtual {v0}, Lcom/growthbeat/message/model/Button;->getType()Lcom/growthbeat/message/model/Button$ButtonType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/message/model/Button$ButtonType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_0
    new-instance v0, Lcom/growthbeat/message/model/ScreenButton;

    invoke-direct {v0, p0}, Lcom/growthbeat/message/model/ScreenButton;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .line 37
    :cond_1
    new-instance v0, Lcom/growthbeat/message/model/CloseButton;

    invoke-direct {v0, p0}, Lcom/growthbeat/message/model/CloseButton;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .line 35
    :cond_2
    new-instance v0, Lcom/growthbeat/message/model/ImageButton;

    invoke-direct {v0, p0}, Lcom/growthbeat/message/model/ImageButton;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .line 33
    :cond_3
    new-instance v0, Lcom/growthbeat/message/model/PlainButton;

    invoke-direct {v0, p0}, Lcom/growthbeat/message/model/PlainButton;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/growthbeat/message/model/Button;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getIntent()Lcom/growthbeat/model/Intent;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/growthbeat/message/model/Button;->intent:Lcom/growthbeat/model/Intent;

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/growthbeat/message/model/Button;->type:Lcom/growthbeat/message/model/Button$ButtonType;

    if-eqz v1, :cond_0

    const-string v1, "type"

    .line 85
    iget-object v2, p0, Lcom/growthbeat/message/model/Button;->type:Lcom/growthbeat/message/model/Button$ButtonType;

    invoke-virtual {v2}, Lcom/growthbeat/message/model/Button$ButtonType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/growthbeat/message/model/Button;->message:Lcom/growthbeat/message/model/Message;

    if-eqz v1, :cond_1

    const-string v1, "message"

    .line 87
    iget-object v2, p0, Lcom/growthbeat/message/model/Button;->message:Lcom/growthbeat/message/model/Message;

    invoke-virtual {v2}, Lcom/growthbeat/message/model/Message;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/growthbeat/message/model/Button;->intent:Lcom/growthbeat/model/Intent;

    if-eqz v1, :cond_2

    const-string v1, "intent"

    .line 89
    iget-object v2, p0, Lcom/growthbeat/message/model/Button;->intent:Lcom/growthbeat/model/Intent;

    invoke-virtual {v2}, Lcom/growthbeat/model/Intent;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/growthbeat/message/model/Button;->created:Ljava/util/Date;

    if-eqz v1, :cond_3

    const-string v1, "created"

    .line 91
    iget-object v2, p0, Lcom/growthbeat/message/model/Button;->created:Ljava/util/Date;

    invoke-static {v2}, Lcom/growthbeat/utils/DateUtils;->formatToDateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to get JSON."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMessage()Lcom/growthbeat/message/model/Message;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/growthbeat/message/model/Button;->message:Lcom/growthbeat/message/model/Message;

    return-object v0
.end method

.method public getType()Lcom/growthbeat/message/model/Button$ButtonType;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/growthbeat/message/model/Button;->type:Lcom/growthbeat/message/model/Button$ButtonType;

    return-object v0
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/growthbeat/message/model/Button;->created:Ljava/util/Date;

    return-void
.end method

.method public setIntent(Lcom/growthbeat/model/Intent;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/growthbeat/message/model/Button;->intent:Lcom/growthbeat/model/Intent;

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "created"

    const-string v1, "intent"

    const-string v2, "message"

    const-string v3, "type"

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    :try_start_0
    invoke-static {p1, v3}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/growthbeat/message/model/Button$ButtonType;->valueOf(Ljava/lang/String;)Lcom/growthbeat/message/model/Button$ButtonType;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/growthbeat/message/model/Button;->setType(Lcom/growthbeat/message/model/Button$ButtonType;)V

    .line 109
    :cond_1
    invoke-static {p1, v2}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/growthbeat/message/model/Message;->getFromJsonObject(Lorg/json/JSONObject;)Lcom/growthbeat/message/model/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/growthbeat/message/model/Button;->setMessage(Lcom/growthbeat/message/model/Message;)V

    .line 111
    :cond_2
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/growthbeat/model/Intent;->getFromJsonObject(Lorg/json/JSONObject;)Lcom/growthbeat/model/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/growthbeat/message/model/Button;->setIntent(Lcom/growthbeat/model/Intent;)V

    .line 113
    :cond_3
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 114
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/growthbeat/utils/DateUtils;->parseFromDateTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/message/model/Button;->setCreated(Ljava/util/Date;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse JSON."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setMessage(Lcom/growthbeat/message/model/Message;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/growthbeat/message/model/Button;->message:Lcom/growthbeat/message/model/Message;

    return-void
.end method

.method public setType(Lcom/growthbeat/message/model/Button$ButtonType;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/growthbeat/message/model/Button;->type:Lcom/growthbeat/message/model/Button$ButtonType;

    return-void
.end method
