.class final Lcom/growthbeat/message/model/PlainMessage$1;
.super Ljava/lang/Object;
.source "PlainMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthbeat/message/model/PlainMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/growthbeat/message/model/Message;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/growthbeat/message/model/Message;
    .locals 3

    .line 26
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    invoke-static {v0}, Lcom/growthbeat/message/model/Message;->getFromJsonObject(Lorg/json/JSONObject;)Lcom/growthbeat/message/model/Message;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 28
    new-instance v0, Lcom/growthbeat/GrowthbeatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse JSON. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/growthbeat/GrowthbeatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/growthbeat/message/model/PlainMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/growthbeat/message/model/Message;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/growthbeat/message/model/Message;
    .locals 0

    .line 17
    new-array p1, p1, [Lcom/growthbeat/message/model/Message;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/growthbeat/message/model/PlainMessage$1;->newArray(I)[Lcom/growthbeat/message/model/Message;

    move-result-object p1

    return-object p1
.end method