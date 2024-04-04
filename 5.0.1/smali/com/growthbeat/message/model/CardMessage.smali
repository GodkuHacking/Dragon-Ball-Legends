.class public Lcom/growthbeat/message/model/CardMessage;
.super Lcom/growthbeat/message/model/Message;
.source "CardMessage.java"


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
.field private baseHeight:I

.field private baseWidth:I

.field private picture:Lcom/growthbeat/message/model/Picture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/growthbeat/message/model/CardMessage$1;

    invoke-direct {v0}, Lcom/growthbeat/message/model/CardMessage$1;-><init>()V

    sput-object v0, Lcom/growthbeat/message/model/CardMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/growthbeat/message/model/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/growthbeat/message/model/Message;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getBaseHeight()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/growthbeat/message/model/CardMessage;->baseHeight:I

    return v0
.end method

.method public getBaseWidth()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/growthbeat/message/model/CardMessage;->baseWidth:I

    return v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 76
    invoke-super {p0}, Lcom/growthbeat/message/model/Message;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/growthbeat/message/model/CardMessage;->picture:Lcom/growthbeat/message/model/Picture;

    if-eqz v1, :cond_0

    const-string v1, "picture"

    .line 80
    iget-object v2, p0, Lcom/growthbeat/message/model/CardMessage;->picture:Lcom/growthbeat/message/model/Picture;

    invoke-virtual {v2}, Lcom/growthbeat/message/model/Picture;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "baseWidth"

    .line 81
    iget v2, p0, Lcom/growthbeat/message/model/CardMessage;->baseWidth:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "baseHeight"

    .line 82
    iget v2, p0, Lcom/growthbeat/message/model/CardMessage;->baseHeight:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 85
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to get JSON."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPicture()Lcom/growthbeat/message/model/Picture;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/growthbeat/message/model/CardMessage;->picture:Lcom/growthbeat/message/model/Picture;

    return-object v0
.end method

.method public setBaseHeight(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/growthbeat/message/model/CardMessage;->baseHeight:I

    return-void
.end method

.method public setBaseWidth(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/growthbeat/message/model/CardMessage;->baseWidth:I

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "baseHeight"

    const-string v1, "baseWidth"

    const-string v2, "picture"

    if-nez p1, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-super {p0, p1}, Lcom/growthbeat/message/model/Message;->setJsonObject(Lorg/json/JSONObject;)V

    .line 101
    :try_start_0
    invoke-static {p1, v2}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    new-instance v3, Lcom/growthbeat/message/model/Picture;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/growthbeat/message/model/Picture;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v3}, Lcom/growthbeat/message/model/CardMessage;->setPicture(Lcom/growthbeat/message/model/Picture;)V

    .line 103
    :cond_1
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/growthbeat/message/model/CardMessage;->setBaseWidth(I)V

    .line 105
    :cond_2
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/message/model/CardMessage;->setBaseHeight(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse JSON."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setPicture(Lcom/growthbeat/message/model/Picture;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/growthbeat/message/model/CardMessage;->picture:Lcom/growthbeat/message/model/Picture;

    return-void
.end method
