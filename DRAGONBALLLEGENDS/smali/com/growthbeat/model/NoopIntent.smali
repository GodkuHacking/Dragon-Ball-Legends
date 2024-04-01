.class public Lcom/growthbeat/model/NoopIntent;
.super Lcom/growthbeat/model/Intent;
.source "NoopIntent.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/growthbeat/model/Intent;-><init>()V

    .line 9
    sget-object v0, Lcom/growthbeat/model/Intent$Type;->noop:Lcom/growthbeat/model/Intent$Type;

    invoke-virtual {p0, v0}, Lcom/growthbeat/model/NoopIntent;->setType(Lcom/growthbeat/model/Intent$Type;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/growthbeat/model/Intent;-><init>(Lorg/json/JSONObject;)V

    .line 14
    sget-object p1, Lcom/growthbeat/model/Intent$Type;->noop:Lcom/growthbeat/model/Intent$Type;

    invoke-virtual {p0, p1}, Lcom/growthbeat/model/NoopIntent;->setType(Lcom/growthbeat/model/Intent$Type;)V

    return-void
.end method


# virtual methods
.method public getJsonObject()Lorg/json/JSONObject;
    .locals 1

    .line 19
    invoke-super {p0}, Lcom/growthbeat/model/Intent;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/growthbeat/model/Intent;->setJsonObject(Lorg/json/JSONObject;)V

    return-void
.end method
