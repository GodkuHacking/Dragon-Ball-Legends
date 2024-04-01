.class public Lcom/growthbeat/message/model/SwipeMessage;
.super Lcom/growthbeat/message/model/Message;
.source "SwipeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/growthbeat/message/model/SwipeMessage$SwipeType;
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
.field private baseHeight:I

.field private baseWidth:I

.field private pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/growthbeat/message/model/Picture;",
            ">;"
        }
    .end annotation
.end field

.field private swipeType:Lcom/growthbeat/message/model/SwipeMessage$SwipeType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/growthbeat/message/model/SwipeMessage$1;

    invoke-direct {v0}, Lcom/growthbeat/message/model/SwipeMessage$1;-><init>()V

    sput-object v0, Lcom/growthbeat/message/model/SwipeMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/growthbeat/message/model/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/growthbeat/message/model/Message;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getBaseHeight()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/growthbeat/message/model/SwipeMessage;->baseHeight:I

    return v0
.end method

.method public getBaseWidth()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/growthbeat/message/model/SwipeMessage;->baseWidth:I

    return v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 4

    .line 89
    invoke-super {p0}, Lcom/growthbeat/message/model/Message;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/growthbeat/message/model/SwipeMessage;->swipeType:Lcom/growthbeat/message/model/SwipeMessage$SwipeType;

    if-eqz v1, :cond_0

    const-string v1, "swipeType"

    .line 93
    iget-object v2, p0, Lcom/growthbeat/message/model/SwipeMessage;->swipeType:Lcom/growthbeat/message/model/SwipeMessage$SwipeType;

    invoke-virtual {v2}, Lcom/growthbeat/message/model/SwipeMessage$SwipeType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/growthbeat/message/model/SwipeMessage;->pictures:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 95
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 96
    iget-object v2, p0, Lcom/growthbeat/message/model/SwipeMessage;->pictures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/growthbeat/message/model/Picture;

    .line 97
    invoke-virtual {v3}, Lcom/growthbeat/message/model/Picture;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v2, "pictures"

    .line 98
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "baseWidth"

    .line 100
    iget v2, p0, Lcom/growthbeat/message/model/SwipeMessage;->baseWidth:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "baseHeight"

    .line 101
    iget v2, p0, Lcom/growthbeat/message/model/SwipeMessage;->baseHeight:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 103
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to get JSON."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPictures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/growthbeat/message/model/Picture;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/growthbeat/message/model/SwipeMessage;->pictures:Ljava/util/List;

    return-object v0
.end method

.method public getSwipeType()Lcom/growthbeat/message/model/SwipeMessage$SwipeType;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/growthbeat/message/model/SwipeMessage;->swipeType:Lcom/growthbeat/message/model/SwipeMessage$SwipeType;

    return-object v0
.end method

.method public setBaseHeight(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/growthbeat/message/model/SwipeMessage;->baseHeight:I

    return-void
.end method

.method public setBaseWidth(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/growthbeat/message/model/SwipeMessage;->baseWidth:I

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "baseHeight"

    const-string v1, "baseWidth"

    const-string v2, "pictures"

    const-string v3, "swipeType"

    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-super {p0, p1}, Lcom/growthbeat/message/model/Message;->setJsonObject(Lorg/json/JSONObject;)V

    .line 119
    :try_start_0
    invoke-static {p1, v3}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/growthbeat/message/model/SwipeMessage$SwipeType;->valueOf(Ljava/lang/String;)Lcom/growthbeat/message/model/SwipeMessage$SwipeType;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/growthbeat/message/model/SwipeMessage;->setSwipeType(Lcom/growthbeat/message/model/SwipeMessage$SwipeType;)V

    .line 121
    :cond_1
    invoke-static {p1, v2}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 122
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v4, 0x0

    .line 124
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 125
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 126
    new-instance v6, Lcom/growthbeat/message/model/Picture;

    invoke-direct {v6, v5}, Lcom/growthbeat/message/model/Picture;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p0, v3}, Lcom/growthbeat/message/model/SwipeMessage;->setPictures(Ljava/util/List;)V

    .line 130
    :cond_3
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 131
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/growthbeat/message/model/SwipeMessage;->setBaseWidth(I)V

    .line 132
    :cond_4
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 133
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/message/model/SwipeMessage;->setBaseHeight(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception p1

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse JSON."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setPictures(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/growthbeat/message/model/Picture;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/growthbeat/message/model/SwipeMessage;->pictures:Ljava/util/List;

    return-void
.end method

.method public setSwipeType(Lcom/growthbeat/message/model/SwipeMessage$SwipeType;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/growthbeat/message/model/SwipeMessage;->swipeType:Lcom/growthbeat/message/model/SwipeMessage$SwipeType;

    return-void
.end method
