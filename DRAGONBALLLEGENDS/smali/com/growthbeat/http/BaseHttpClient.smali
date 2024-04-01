.class public Lcom/growthbeat/http/BaseHttpClient;
.super Ljava/lang/Object;
.source "BaseHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/growthbeat/http/BaseHttpClient$RequestMethod;
    }
.end annotation


# static fields
.field private static final CONTENT_CHARSET:Ljava/lang/String; = "UTF-8"


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private connectTimeout:I

.field private readTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/growthbeat/http/BaseHttpClient;->baseUrl:Ljava/lang/String;

    const v0, 0xea60

    .line 29
    iput v0, p0, Lcom/growthbeat/http/BaseHttpClient;->connectTimeout:I

    .line 30
    iput v0, p0, Lcom/growthbeat/http/BaseHttpClient;->readTimeout:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/growthbeat/http/BaseHttpClient;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lcom/growthbeat/http/BaseHttpClient;->setBaseUrl(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/growthbeat/http/BaseHttpClient;->setConnectTimeout(I)V

    .line 40
    invoke-virtual {p0, p3}, Lcom/growthbeat/http/BaseHttpClient;->setReadTimeout(I)V

    return-void
.end method

.method private convertResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 181
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 189
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 191
    :catch_0
    new-instance p1, Lcom/growthbeat/GrowthbeatException;

    const-string v0, "Failed to convert server response."

    invoke-direct {p1, v0}, Lcom/growthbeat/GrowthbeatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private generateGrowthbeatExceptionByErrorResponse(Ljava/lang/String;)Lcom/growthbeat/GrowthbeatException;
    .locals 5

    .line 198
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/growthbeat/GrowthbeatException;

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/growthbeat/GrowthbeatException;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Lcom/growthbeat/GrowthbeatException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "Failed to parse response JSON. %s \n%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/growthbeat/GrowthbeatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private generateHttpURLConnection(Lcom/growthbeat/http/BaseHttpClient$RequestMethod;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 128
    :try_start_0
    sget-object v0, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->GET:Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 131
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    .line 136
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_2

    const-string v0, "Connection"

    const-string v1, "close"

    .line 140
    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/growthbeat/http/BaseHttpClient;->getConnectTimeout()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 144
    invoke-virtual {p0}, Lcom/growthbeat/http/BaseHttpClient;->getReadTimeout()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 145
    invoke-virtual {p1}, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded; charset=UTF-8"

    .line 146
    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v1, "application/json"

    .line 147
    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_3

    const-string v0, "User-Agent"

    .line 149
    invoke-virtual {p2, v0, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_3
    sget-object p4, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->GET:Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    if-eq p1, p4, :cond_4

    const/4 p1, 0x1

    .line 153
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 154
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eqz p3, :cond_4

    .line 157
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const-string p4, "UTF-8"

    .line 158
    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 159
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 160
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object p2

    .line 170
    :catch_0
    new-instance p1, Lcom/growthbeat/GrowthbeatException;

    const-string p2, "Failed create HttpURLConnection"

    invoke-direct {p1, p2}, Lcom/growthbeat/GrowthbeatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/growthbeat/http/BaseHttpClient;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/growthbeat/http/BaseHttpClient;->connectTimeout:I

    return v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/growthbeat/http/BaseHttpClient;->readTimeout:I

    return v0
.end method

.method protected request(Lcom/growthbeat/http/BaseHttpClient$RequestMethod;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/growthbeat/http/BaseHttpClient;->request(Lcom/growthbeat/http/BaseHttpClient$RequestMethod;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected request(Lcom/growthbeat/http/BaseHttpClient$RequestMethod;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "Failed to close connection. "

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/growthbeat/http/BaseHttpClient;->generateHttpURLConnection(Lcom/growthbeat/http/BaseHttpClient$RequestMethod;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 p2, 0x0

    .line 97
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 99
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    const/16 p4, 0x1f4

    if-ge p3, p4, :cond_0

    .line 102
    new-instance p3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :try_start_1
    invoke-direct {p0, p3}, Lcom/growthbeat/http/BaseHttpClient;->convertResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    :try_start_2
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 117
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p2

    :catch_0
    move-exception p1

    .line 115
    new-instance p2, Lcom/growthbeat/GrowthbeatException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/growthbeat/GrowthbeatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-object p2, p3

    goto :goto_1

    .line 100
    :cond_0
    :try_start_3
    new-instance p3, Lcom/growthbeat/GrowthbeatException;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/growthbeat/GrowthbeatException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p3

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    goto :goto_2

    :catch_3
    move-exception p3

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 109
    :goto_0
    :try_start_4
    new-instance p4, Lcom/growthbeat/GrowthbeatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connection. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, v1, p2}, Lcom/growthbeat/GrowthbeatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    goto :goto_2

    .line 106
    :catch_4
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    .line 107
    invoke-direct {p0, p2}, Lcom/growthbeat/http/BaseHttpClient;->convertResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/growthbeat/http/BaseHttpClient;->generateGrowthbeatExceptionByErrorResponse(Ljava/lang/String;)Lcom/growthbeat/GrowthbeatException;

    move-result-object p3

    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    if-eqz p3, :cond_1

    .line 113
    :try_start_6
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception p1

    .line 115
    new-instance p2, Lcom/growthbeat/GrowthbeatException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/growthbeat/GrowthbeatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 117
    :cond_1
    :goto_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 118
    throw p2
.end method

.method public request(Lcom/growthbeat/http/BaseHttpClient$RequestMethod;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/growthbeat/http/BaseHttpClient$RequestMethod;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/growthbeat/http/BaseHttpClient;->request(Lcom/growthbeat/http/BaseHttpClient$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public request(Lcom/growthbeat/http/BaseHttpClient$RequestMethod;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/growthbeat/http/BaseHttpClient$RequestMethod;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->GET:Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    if-ne p1, v0, :cond_0

    const-string v0, "?"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 69
    :goto_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :catch_0
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 71
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v1, 0x1

    sub-int/2addr p3, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 77
    iget-object v3, p0, Lcom/growthbeat/http/BaseHttpClient;->baseUrl:Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const-string p2, "%s%s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/growthbeat/http/BaseHttpClient;->request(Lcom/growthbeat/http/BaseHttpClient$RequestMethod;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/growthbeat/http/BaseHttpClient;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/growthbeat/http/BaseHttpClient;->connectTimeout:I

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/growthbeat/http/BaseHttpClient;->readTimeout:I

    return-void
.end method
