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
    .locals 7

    .line 207
    new-instance v0, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->GET:Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    .line 208
    new-instance v0, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    const-string v1, "POST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->POST:Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    .line 209
    new-instance v0, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    const-string v1, "PUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->PUT:Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    .line 210
    new-instance v0, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    const-string v1, "DELETE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->DELETE:Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    .line 206
    sget-object v6, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->GET:Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    aput-object v6, v1, v2

    sget-object v2, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->POST:Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    aput-object v2, v1, v3

    sget-object v2, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->PUT:Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/growthbeat/http/BaseHttpClient$RequestMethod;->$VALUES:[Lcom/growthbeat/http/BaseHttpClient$RequestMethod;

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
