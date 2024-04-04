.class public Lcom/growthbeat/message/model/PlainMessage;
.super Lcom/growthbeat/message/model/Message;
.source "PlainMessage.java"


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
.field private caption:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/growthbeat/message/model/PlainMessage$1;

    invoke-direct {v0}, Lcom/growthbeat/message/model/PlainMessage$1;-><init>()V

    sput-object v0, Lcom/growthbeat/message/model/PlainMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/growthbeat/message/model/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/growthbeat/message/model/Message;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getCaption()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/growthbeat/message/model/PlainMessage;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 66
    invoke-super {p0}, Lcom/growthbeat/message/model/Message;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/growthbeat/message/model/PlainMessage;->caption:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "caption"

    .line 70
    iget-object v2, p0, Lcom/growthbeat/message/model/PlainMessage;->caption:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/growthbeat/message/model/PlainMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "text"

    .line 72
    iget-object v2, p0, Lcom/growthbeat/message/model/PlainMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    .line 74
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to get JSON."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/growthbeat/message/model/PlainMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/growthbeat/message/model/PlainMessage;->caption:Ljava/lang/String;

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "text"

    const-string v1, "caption"

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcom/growthbeat/message/model/Message;->setJsonObject(Lorg/json/JSONObject;)V

    .line 90
    :try_start_0
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/growthbeat/message/model/PlainMessage;->setCaption(Ljava/lang/String;)V

    .line 92
    :cond_1
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/message/model/PlainMessage;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse JSON."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/growthbeat/message/model/PlainMessage;->text:Ljava/lang/String;

    return-void
.end method
