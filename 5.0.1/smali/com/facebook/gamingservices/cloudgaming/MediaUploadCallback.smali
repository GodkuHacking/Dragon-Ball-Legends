.class Lcom/facebook/gamingservices/cloudgaming/MediaUploadCallback;
.super Ljava/lang/Object;
.source "AppToUserNotificationSender.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field private body:Ljava/lang/String;

.field callback:Lcom/facebook/GraphRequest$Callback;

.field private payload:Ljava/lang/String;

.field private timeInterval:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/facebook/GraphRequest$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "body",
            "timeInterval",
            "payload",
            "callback"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/facebook/gamingservices/cloudgaming/MediaUploadCallback;->title:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/facebook/gamingservices/cloudgaming/MediaUploadCallback;->body:Ljava/lang/String;

    .line 105
    iput p3, p0, Lcom/facebook/gamingservices/cloudgaming/MediaUploadCallback;->timeInterval:I

    .line 106
    iput-object p4, p0, Lcom/facebook/gamingservices/cloudgaming/MediaUploadCallback;->payload:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lcom/facebook/gamingservices/cloudgaming/MediaUploadCallback;->callback:Lcom/facebook/GraphRequest$Callback;

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-nez v0, :cond_1

    .line 115
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 117
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 118
    iget-object v0, p0, Lcom/facebook/gamingservices/cloudgaming/MediaUploadCallback;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/facebook/gamingservices/cloudgaming/MediaUploadCallback;->body:Ljava/lang/String;

    const-string v2, "body"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget v0, p0, Lcom/facebook/gamingservices/cloudgaming/MediaUploadCallback;->timeInterval:I

    const-string v2, "time_interval"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    iget-object v0, p0, Lcom/facebook/gamingservices/cloudgaming/MediaUploadCallback;->payload:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, "payload:"

    .line 122
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "media_id"

    .line 124
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance p1, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    iget-object v5, p0, Lcom/facebook/gamingservices/cloudgaming/MediaUploadCallback;->callback:Lcom/facebook/GraphRequest$Callback;

    const-string v2, "me/schedule_gaming_app_to_user_update"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 132
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void

    .line 113
    :cond_1
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
