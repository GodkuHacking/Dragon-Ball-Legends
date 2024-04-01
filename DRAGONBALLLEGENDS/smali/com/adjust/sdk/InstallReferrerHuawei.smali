.class public Lcom/adjust/sdk/InstallReferrerHuawei;
.super Ljava/lang/Object;
.source "InstallReferrerHuawei.java"


# static fields
.field private static final COLUMN_INDEX_CLICK_TIME:I = 0x1

.field private static final COLUMN_INDEX_INSTALL_TIME:I = 0x2

.field private static final COLUMN_INDEX_REFERRER:I = 0x0

.field private static final COLUMN_INDEX_TRACK_ID:I = 0x4

.field private static final REFERRER_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.huawei.appmarket.commondata"

.field private static final REFERRER_PROVIDER_URI:Ljava/lang/String; = "content://com.huawei.appmarket.commondata/item/5"


# instance fields
.field private context:Landroid/content/Context;

.field private logger:Lcom/adjust/sdk/ILogger;

.field private final referrerCallback:Lcom/adjust/sdk/InstallReferrerReadListener;

.field private final shouldTryToRead:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adjust/sdk/InstallReferrerReadListener;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/InstallReferrerHuawei;->logger:Lcom/adjust/sdk/ILogger;

    .line 75
    iput-object p1, p0, Lcom/adjust/sdk/InstallReferrerHuawei;->context:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/adjust/sdk/InstallReferrerHuawei;->referrerCallback:Lcom/adjust/sdk/InstallReferrerReadListener;

    .line 77
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/adjust/sdk/InstallReferrerHuawei;->shouldTryToRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private isValidReferrerHuaweiAds(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 157
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isValidReferrerHuaweiAppGallery(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 169
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public readReferrer()V
    .locals 19

    move-object/from16 v1, p0

    .line 81
    iget-object v0, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->shouldTryToRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Should not try to read Install referrer Huawei"

    invoke-interface {v0, v3, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 86
    :cond_0
    iget-object v0, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->context:Landroid/content/Context;

    const-string v3, "com.huawei.appmarket.commondata"

    invoke-static {v0, v3}, Lcom/adjust/sdk/Util;->resolveContentProvider(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    const-string v0, "content://com.huawei.appmarket.commondata/item/5"

    .line 91
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 92
    iget-object v4, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    .line 94
    iget-object v5, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v5, v0

    .line 96
    :try_start_0
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    .line 98
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 100
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v0, 0x4

    .line 101
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v5, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->logger:Lcom/adjust/sdk/ILogger;

    const-string v6, "InstallReferrerHuawei reads index_referrer[%s] index_track_id[%s]"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v12, v7, v2

    aput-object v0, v7, v10

    invoke-interface {v5, v6, v7}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 110
    iget-object v7, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->logger:Lcom/adjust/sdk/ILogger;

    const-string v8, "InstallReferrerHuawei reads clickTime[%s] installTime[%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v2

    aput-object v6, v4, v10

    invoke-interface {v7, v8, v4}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 114
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 116
    invoke-direct {v1, v12}, Lcom/adjust/sdk/InstallReferrerHuawei;->isValidReferrerHuaweiAds(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 117
    new-instance v6, Lcom/adjust/sdk/ReferrerDetails;

    move-object v11, v6

    move-wide v13, v4

    move-wide/from16 v15, v17

    invoke-direct/range {v11 .. v16}, Lcom/adjust/sdk/ReferrerDetails;-><init>(Ljava/lang/String;JJ)V

    .line 122
    iget-object v7, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->referrerCallback:Lcom/adjust/sdk/InstallReferrerReadListener;

    const-string v8, "huawei_ads"

    invoke-interface {v7, v6, v8}, Lcom/adjust/sdk/InstallReferrerReadListener;->onInstallReferrerRead(Lcom/adjust/sdk/ReferrerDetails;Ljava/lang/String;)V

    .line 126
    :cond_2
    invoke-direct {v1, v0}, Lcom/adjust/sdk/InstallReferrerHuawei;->isValidReferrerHuaweiAppGallery(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 127
    new-instance v6, Lcom/adjust/sdk/ReferrerDetails;

    move-object v13, v6

    move-object v14, v0

    move-wide v15, v4

    invoke-direct/range {v13 .. v18}, Lcom/adjust/sdk/ReferrerDetails;-><init>(Ljava/lang/String;JJ)V

    .line 132
    iget-object v0, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->referrerCallback:Lcom/adjust/sdk/InstallReferrerReadListener;

    const-string v4, "huawei_app_gallery"

    invoke-interface {v0, v6, v4}, Lcom/adjust/sdk/InstallReferrerReadListener;->onInstallReferrerRead(Lcom/adjust/sdk/ReferrerDetails;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_3
    iget-object v5, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->logger:Lcom/adjust/sdk/ILogger;

    const-string v6, "InstallReferrerHuawei fail to read referrer for package [%s] and content uri [%s]"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->context:Landroid/content/Context;

    .line 139
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 137
    invoke-interface {v5, v6, v4}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 142
    :try_start_1
    iget-object v4, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->logger:Lcom/adjust/sdk/ILogger;

    const-string v5, "InstallReferrerHuawei error [%s]"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-interface {v4, v5, v6}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_5

    .line 145
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_5
    iget-object v0, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->shouldTryToRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_2
    if-eqz v3, :cond_6

    .line 145
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_6
    throw v0
.end method
