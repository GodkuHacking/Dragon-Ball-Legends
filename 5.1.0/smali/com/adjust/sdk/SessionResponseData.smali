.class public Lcom/adjust/sdk/SessionResponseData;
.super Lcom/adjust/sdk/ResponseData;
.source "SessionResponseData.java"


# instance fields
.field private sdkPlatform:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/adjust/sdk/ResponseData;-><init>()V

    .line 14
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getClientSdk()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/adjust/sdk/Util;->getSdkPrefixPlatform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adjust/sdk/SessionResponseData;->sdkPlatform:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFailureResponseData()Lcom/adjust/sdk/AdjustSessionFailure;
    .locals 3

    .line 41
    iget-boolean v0, p0, Lcom/adjust/sdk/SessionResponseData;->success:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Lcom/adjust/sdk/AdjustSessionFailure;

    invoke-direct {v0}, Lcom/adjust/sdk/AdjustSessionFailure;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->sdkPlatform:Ljava/lang/String;

    const-string v2, "unity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 48
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->message:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->message:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->message:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->timestamp:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->timestamp:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->timestamp:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->adid:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/adjust/sdk/SessionResponseData;->adid:Ljava/lang/String;

    :cond_3
    iput-object v2, v0, Lcom/adjust/sdk/AdjustSessionFailure;->adid:Ljava/lang/String;

    .line 51
    iget-boolean v1, p0, Lcom/adjust/sdk/SessionResponseData;->willRetry:Z

    iput-boolean v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->willRetry:Z

    .line 52
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->jsonResponse:Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_2
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->jsonResponse:Lorg/json/JSONObject;

    goto :goto_3

    .line 55
    :cond_5
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->message:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->timestamp:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->timestamp:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->adid:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->adid:Ljava/lang/String;

    .line 58
    iget-boolean v1, p0, Lcom/adjust/sdk/SessionResponseData;->willRetry:Z

    iput-boolean v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->willRetry:Z

    .line 59
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->jsonResponse:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->jsonResponse:Lorg/json/JSONObject;

    :goto_3
    return-object v0
.end method

.method public getSuccessResponseData()Lcom/adjust/sdk/AdjustSessionSuccess;
    .locals 3

    .line 18
    iget-boolean v0, p0, Lcom/adjust/sdk/SessionResponseData;->success:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lcom/adjust/sdk/AdjustSessionSuccess;

    invoke-direct {v0}, Lcom/adjust/sdk/AdjustSessionSuccess;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->sdkPlatform:Ljava/lang/String;

    const-string v2, "unity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->message:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->message:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->message:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->timestamp:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->timestamp:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->timestamp:Ljava/lang/String;

    .line 27
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->adid:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/adjust/sdk/SessionResponseData;->adid:Ljava/lang/String;

    :cond_3
    iput-object v2, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->adid:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->jsonResponse:Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_2
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->jsonResponse:Lorg/json/JSONObject;

    goto :goto_3

    .line 31
    :cond_5
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->message:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->timestamp:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->timestamp:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->adid:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->adid:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->jsonResponse:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->jsonResponse:Lorg/json/JSONObject;

    :goto_3
    return-object v0
.end method
