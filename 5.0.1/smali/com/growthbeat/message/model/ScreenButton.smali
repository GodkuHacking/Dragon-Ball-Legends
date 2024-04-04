.class public Lcom/growthbeat/message/model/ScreenButton;
.super Lcom/growthbeat/message/model/Button;
.source "ScreenButton.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/growthbeat/message/model/Button;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/growthbeat/message/model/Button;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getJsonObject()Lorg/json/JSONObject;
    .locals 1

    .line 18
    invoke-super {p0}, Lcom/growthbeat/message/model/Button;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-super {p0, p1}, Lcom/growthbeat/message/model/Button;->setJsonObject(Lorg/json/JSONObject;)V

    return-void
.end method
