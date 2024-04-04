.class public abstract Lcom/growthbeat/model/Model;
.super Ljava/lang/Object;
.source "Model.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/growthbeat/model/Model;-><init>()V

    .line 13
    invoke-virtual {p0, p1}, Lcom/growthbeat/model/Model;->setJsonObject(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public abstract getJsonObject()Lorg/json/JSONObject;
.end method

.method public abstract setJsonObject(Lorg/json/JSONObject;)V
.end method
