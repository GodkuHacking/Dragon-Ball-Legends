.class Lcom/growthbeat/message/MessageImageDownloader$AsyncImageLoader;
.super Landroid/os/AsyncTask;
.source "MessageImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthbeat/message/MessageImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncImageLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final IMAGE_DOWNLOAD_TIMEOUT:I = 0x2710


# instance fields
.field private callback:Lcom/growthbeat/message/MessageImageDownloader$Callback;


# direct methods
.method public constructor <init>(Lcom/growthbeat/message/MessageImageDownloader$Callback;)V
    .locals 1

    .line 137
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/growthbeat/message/MessageImageDownloader$AsyncImageLoader;->callback:Lcom/growthbeat/message/MessageImageDownloader$Callback;

    .line 138
    iput-object p1, p0, Lcom/growthbeat/message/MessageImageDownloader$AsyncImageLoader;->callback:Lcom/growthbeat/message/MessageImageDownloader$Callback;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7

    .line 144
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 146
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    const-string v5, "GET"

    .line 148
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v5, 0x2710

    .line 149
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 150
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 151
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 152
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ge v5, v6, :cond_0

    const/16 v6, 0x12c

    if-lt v5, v6, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    invoke-static {}, Lcom/growthbeat/message/GrowthMessage;->getInstance()Lcom/growthbeat/message/GrowthMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/growthbeat/message/GrowthMessage;->getMessageImageCacheManager()Lcom/growthbeat/message/MessageImageCacheManager;

    move-result-object v5

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lcom/growthbeat/message/MessageImageCacheManager;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :catch_0
    iget-object p1, p0, Lcom/growthbeat/message/MessageImageDownloader$AsyncImageLoader;->callback:Lcom/growthbeat/message/MessageImageDownloader$Callback;

    invoke-interface {p1}, Lcom/growthbeat/message/MessageImageDownloader$Callback;->failure()V

    .line 158
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x1

    .line 162
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 132
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/growthbeat/message/MessageImageDownloader$AsyncImageLoader;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 168
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/growthbeat/message/MessageImageDownloader$AsyncImageLoader;->callback:Lcom/growthbeat/message/MessageImageDownloader$Callback;

    invoke-interface {p1}, Lcom/growthbeat/message/MessageImageDownloader$Callback;->success()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 132
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/growthbeat/message/MessageImageDownloader$AsyncImageLoader;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
