.class public final enum Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;
.super Ljava/lang/Enum;
.source "SDKShareIntentEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

.field public static final enum CHALLENGE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

.field public static final enum INVITE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

.field public static final enum REQUEST:Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

.field public static final enum SHARE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;


# instance fields
.field private final mStringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

    const-string v1, "INVITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;->INVITE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

    .line 9
    new-instance v0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

    const-string v1, "REQUEST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;->REQUEST:Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

    .line 10
    new-instance v0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

    const-string v1, "CHALLENGE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v1}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;->CHALLENGE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

    .line 11
    new-instance v0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

    const-string v1, "SHARE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v1}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;->SHARE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

    .line 7
    sget-object v6, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;->INVITE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

    aput-object v6, v1, v2

    sget-object v2, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;->REQUEST:Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

    aput-object v2, v1, v3

    sget-object v2, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;->CHALLENGE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;->$VALUES:[Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "stringValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;->mStringValue:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intentType"
        }
    .end annotation

    .line 34
    invoke-static {}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;->values()[Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 35
    invoke-virtual {v3}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static validate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intentType"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;->values()[Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 26
    invoke-virtual {v3}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 7
    const-class v0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

    return-object p0
.end method

.method public static values()[Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;
    .locals 1

    .line 7
    sget-object v0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;->$VALUES:[Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

    invoke-virtual {v0}, [Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum;->mStringValue:Ljava/lang/String;

    return-object v0
.end method
