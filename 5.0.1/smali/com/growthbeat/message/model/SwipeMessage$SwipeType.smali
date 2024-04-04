.class public final enum Lcom/growthbeat/message/model/SwipeMessage$SwipeType;
.super Ljava/lang/Enum;
.source "SwipeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthbeat/message/model/SwipeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwipeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/growthbeat/message/model/SwipeMessage$SwipeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/growthbeat/message/model/SwipeMessage$SwipeType;

.field public static final enum imageOnly:Lcom/growthbeat/message/model/SwipeMessage$SwipeType;

.field public static final enum oneButton:Lcom/growthbeat/message/model/SwipeMessage$SwipeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 140
    new-instance v0, Lcom/growthbeat/message/model/SwipeMessage$SwipeType;

    const-string v1, "imageOnly"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/growthbeat/message/model/SwipeMessage$SwipeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/message/model/SwipeMessage$SwipeType;->imageOnly:Lcom/growthbeat/message/model/SwipeMessage$SwipeType;

    .line 141
    new-instance v0, Lcom/growthbeat/message/model/SwipeMessage$SwipeType;

    const-string v1, "oneButton"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/growthbeat/message/model/SwipeMessage$SwipeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/message/model/SwipeMessage$SwipeType;->oneButton:Lcom/growthbeat/message/model/SwipeMessage$SwipeType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/growthbeat/message/model/SwipeMessage$SwipeType;

    .line 139
    sget-object v4, Lcom/growthbeat/message/model/SwipeMessage$SwipeType;->imageOnly:Lcom/growthbeat/message/model/SwipeMessage$SwipeType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/growthbeat/message/model/SwipeMessage$SwipeType;->$VALUES:[Lcom/growthbeat/message/model/SwipeMessage$SwipeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/growthbeat/message/model/SwipeMessage$SwipeType;
    .locals 1

    .line 139
    const-class v0, Lcom/growthbeat/message/model/SwipeMessage$SwipeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/growthbeat/message/model/SwipeMessage$SwipeType;

    return-object p0
.end method

.method public static values()[Lcom/growthbeat/message/model/SwipeMessage$SwipeType;
    .locals 1

    .line 139
    sget-object v0, Lcom/growthbeat/message/model/SwipeMessage$SwipeType;->$VALUES:[Lcom/growthbeat/message/model/SwipeMessage$SwipeType;

    invoke-virtual {v0}, [Lcom/growthbeat/message/model/SwipeMessage$SwipeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/growthbeat/message/model/SwipeMessage$SwipeType;

    return-object v0
.end method
