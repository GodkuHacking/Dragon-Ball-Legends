.class public Lcom/growthbeat/Preference;
.super Ljava/lang/Object;
.source "Preference.java"


# instance fields
.field private context:Landroid/content/Context;

.field private fileName:Ljava/lang/String;

.field private preferences:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/growthbeat/Preference;->context:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/growthbeat/Preference;->fileName:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/growthbeat/Preference;->preferences:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p2}, Lcom/growthbeat/Preference;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/growthbeat/Preference;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/growthbeat/Preference;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lcom/growthbeat/Preference;->setFileName(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized getPreferences()Lorg/json/JSONObject;
    .locals 2

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/growthbeat/Preference;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/growthbeat/Preference;->preferences:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 134
    :try_start_1
    iget-object v0, p0, Lcom/growthbeat/Preference;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/growthbeat/Preference;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/growthbeat/utils/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/growthbeat/Preference;->preferences:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :catch_0
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/growthbeat/Preference;->preferences:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 142
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/growthbeat/Preference;->preferences:Lorg/json/JSONObject;

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/growthbeat/Preference;->preferences:Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 130
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private saveFile(Lorg/json/JSONObject;)V
    .locals 3

    .line 114
    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/growthbeat/Preference;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/growthbeat/Preference;->fileName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 118
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 119
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 120
    iput-object p1, p0, Lcom/growthbeat/Preference;->preferences:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 123
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 48
    :try_start_0
    invoke-direct {p0}, Lcom/growthbeat/Preference;->getPreferences()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 58
    :try_start_0
    invoke-direct {p0}, Lcom/growthbeat/Preference;->getPreferences()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/growthbeat/Preference;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 78
    :try_start_0
    invoke-direct {p0}, Lcom/growthbeat/Preference;->getPreferences()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 68
    :try_start_0
    invoke-direct {p0}, Lcom/growthbeat/Preference;->getPreferences()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/growthbeat/Preference;->getPreferences()Lorg/json/JSONObject;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    invoke-direct {p0, v0}, Lcom/growthbeat/Preference;->saveFile(Lorg/json/JSONObject;)V

    return-void
.end method

.method public removeAll()V
    .locals 2

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/growthbeat/Preference;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/growthbeat/Preference;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 108
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/growthbeat/Preference;->preferences:Lorg/json/JSONObject;

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public save(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/growthbeat/Preference;->getPreferences()Lorg/json/JSONObject;

    move-result-object v0

    .line 89
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    invoke-direct {p0, v0}, Lcom/growthbeat/Preference;->saveFile(Lorg/json/JSONObject;)V

    :catch_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/growthbeat/Preference;->context:Landroid/content/Context;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/growthbeat/Preference;->fileName:Ljava/lang/String;

    return-void
.end method
