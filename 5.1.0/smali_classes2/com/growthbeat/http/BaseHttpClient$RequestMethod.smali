.class public final enum Lcom/growthbeat/http/BaseHttpClient$RequestMethod;
.super Ljava/lang/Enum;
.source "BaseHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthbeat/http/BaseHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/growthbeat/http/BaseHttpClient$RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

.field public static final enum DELETE:Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

.field public static final enum GET:Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

.field public static final enum POST:Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

.field public static final enum PUT:Lcom/growthbeat/http/BaseHttpClient$RequestMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 207
    new-instance v0, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->GET:Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    .line 208
    new-instance v1, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->POST:Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    .line 209
    new-instance v3, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    const-string v5, "PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->PUT:Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    .line 210
    new-instance v5, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    const-string v7, "DELETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->DELETE:Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 206
    sput-object v7, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->$VALUES:[Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/growthbeat/http/BaseHttpClient$RequestMethod;
    .locals 1

    .line 206
    const-class v0, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    return-object p0
.end method

.method public static values()[Lcom/growthbeat/http/BaseHttpClient$RequestMethod;
    .locals 1

    .line 206
    sget-object v0, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->$VALUES:[Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    invoke-virtual {v0}, [Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    return-object v0
.end method