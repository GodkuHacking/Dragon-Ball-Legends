.class public Lcom/growthpush/model/Tag;
.super Lcom/growthbeat/model/Model;
.source "Tag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/growthpush/model/Tag$TagType;
    }
.end annotation


# static fields
.field private static final TAG_KEY_FORMAT_V4:Ljava/lang/String; = "tags:%s:%s"


# instance fields
.field private clientId:Ljava/lang/String;

.field private tagId:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/growthbeat/model/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/growthpush/model/Tag;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/growthpush/model/Tag;->setJsonObject(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/growthpush/model/Tag$TagType;Ljava/lang/String;Ljava/lang/String;)Lcom/growthpush/model/Tag;
    .locals 2

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "clientId"

    .line 36
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "applicationId"

    .line 38
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "credentialId"

    .line 40
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p3, :cond_3

    .line 42
    invoke-virtual {p3}, Lcom/growthpush/model/Tag$TagType;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "type"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p4, :cond_4

    const-string p0, "name"

    .line 44
    invoke-interface {v0, p0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p5, :cond_5

    const-string p0, "value"

    .line 46
    invoke-interface {v0, p0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_5
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object p0

    invoke-virtual {p0}, Lcom/growthpush/GrowthPush;->getHttpClient()Lcom/growthbeat/http/GrowthbeatHttpClient;

    move-result-object p0

    const-string p1, "4/tag_clients"

    invoke-virtual {p0, p1, v0}, Lcom/growthbeat/http/GrowthbeatHttpClient;->post(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_6
    new-instance p1, Lcom/growthpush/model/Tag;

    invoke-direct {p1, p0}, Lcom/growthpush/model/Tag;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public static load(Lcom/growthpush/model/Tag$TagType;Ljava/lang/String;)Lcom/growthpush/model/Tag;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthpush/GrowthPush;->getPreference()Lcom/growthbeat/Preference;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/growthpush/model/Tag$TagType;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v5, "tags:%s:%s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/growthbeat/Preference;->get(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 72
    new-instance p0, Lcom/growthpush/model/Tag;

    invoke-direct {p0, v1}, Lcom/growthpush/model/Tag;-><init>(Lorg/json/JSONObject;)V

    return-object p0

    .line 75
    :cond_1
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthpush/GrowthPush;->getPreference()Lcom/growthbeat/Preference;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string v3, "tags:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/growthbeat/Preference;->get(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 79
    :cond_2
    new-instance v0, Lcom/growthpush/model/Tag;

    invoke-direct {v0, v1}, Lcom/growthpush/model/Tag;-><init>(Lorg/json/JSONObject;)V

    .line 80
    invoke-static {v0, p0, p1}, Lcom/growthpush/model/Tag;->save(Lcom/growthpush/model/Tag;Lcom/growthpush/model/Tag$TagType;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static save(Lcom/growthpush/model/Tag;Lcom/growthpush/model/Tag$TagType;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 58
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthpush/GrowthPush;->getPreference()Lcom/growthbeat/Preference;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/growthpush/model/Tag$TagType;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "tags:%s:%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/growthpush/model/Tag;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/growthbeat/Preference;->save(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/growthpush/model/Tag;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 111
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "tagId"

    .line 113
    invoke-virtual {p0}, Lcom/growthpush/model/Tag;->getTagId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "clientId"

    .line 114
    invoke-virtual {p0}, Lcom/growthpush/model/Tag;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    iget-object v1, p0, Lcom/growthpush/model/Tag;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "value"

    .line 116
    invoke-virtual {p0}, Lcom/growthpush/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTagId()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/growthpush/model/Tag;->tagId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/growthpush/model/Tag;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/growthpush/model/Tag;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "value"

    const-string v1, "clientId"

    const-string v2, "tagId"

    .line 128
    :try_start_0
    invoke-static {p1, v2}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/growthpush/model/Tag;->setTagId(I)V

    .line 130
    :cond_0
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/growthpush/model/Tag;->setClientId(Ljava/lang/String;)V

    .line 132
    :cond_1
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthpush/model/Tag;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    .line 135
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to parse JSON."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTagId(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/growthpush/model/Tag;->tagId:I

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/growthpush/model/Tag;->value:Ljava/lang/String;

    return-void
.end method
