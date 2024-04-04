.class public Lcom/adjust/sdk/network/UtilNetworking;
.super Ljava/lang/Object;
.source "UtilNetworking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adjust/sdk/network/UtilNetworking$IHttpsURLConnectionProvider;,
        Lcom/adjust/sdk/network/UtilNetworking$IConnectionOptions;
    }
.end annotation


# static fields
.field private static userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/adjust/sdk/network/UtilNetworking;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static createDefaultConnectionOptions()Lcom/adjust/sdk/network/UtilNetworking$IConnectionOptions;
    .locals 1

    .line 34
    new-instance v0, Lcom/adjust/sdk/network/UtilNetworking$1;

    invoke-direct {v0}, Lcom/adjust/sdk/network/UtilNetworking$1;-><init>()V

    return-object v0
.end method

.method public static createDefaultHttpsURLConnectionProvider()Lcom/adjust/sdk/network/UtilNetworking$IHttpsURLConnectionProvider;
    .locals 1

    .line 56
    new-instance v0, Lcom/adjust/sdk/network/UtilNetworking$2;

    invoke-direct {v0}, Lcom/adjust/sdk/network/UtilNetworking$2;-><init>()V

    return-object v0
.end method

.method public static extractJsonLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 83
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 84
    check-cast p0, Ljava/lang/Long;

    return-object p0

    .line 86
    :cond_0
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    .line 87
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 89
    :cond_1
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 91
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    double-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static extractJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 69
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 70
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getLogger()Lcom/adjust/sdk/ILogger;
    .locals 1

    .line 22
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    return-object v0
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 26
    sput-object p0, Lcom/adjust/sdk/network/UtilNetworking;->userAgent:Ljava/lang/String;

    return-void
.end method
