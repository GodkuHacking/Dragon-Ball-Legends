.class public Lcom/growthbeat/message/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/growthbeat/message/MessageQueue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private message:Lcom/growthbeat/message/model/Message;

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/growthbeat/message/MessageQueue$1;

    invoke-direct {v0}, Lcom/growthbeat/message/MessageQueue$1;-><init>()V

    sput-object v0, Lcom/growthbeat/message/MessageQueue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/growthbeat/message/model/Message;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/growthbeat/message/MessageQueue;->setUuid(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/growthbeat/message/MessageQueue;->setMessage(Lcom/growthbeat/message/model/Message;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "message"

    const-string v1, "uuid"

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    :try_start_0
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/growthbeat/message/MessageQueue;->setUuid(Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/growthbeat/message/model/Message;->getFromJsonObject(Lorg/json/JSONObject;)Lcom/growthbeat/message/model/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/message/MessageQueue;->setMessage(Lcom/growthbeat/message/model/Message;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method public getMessage()Lcom/growthbeat/message/model/Message;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/growthbeat/message/MessageQueue;->message:Lcom/growthbeat/message/model/Message;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/growthbeat/message/MessageQueue;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Lcom/growthbeat/message/model/Message;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/growthbeat/message/MessageQueue;->message:Lcom/growthbeat/message/model/Message;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/growthbeat/message/MessageQueue;->uuid:Ljava/lang/String;

    return-void
.end method
