.class public final enum Lcom/growthbeat/message/model/Message$MessageType;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthbeat/message/model/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/growthbeat/message/model/Message$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/growthbeat/message/model/Message$MessageType;

.field public static final enum card:Lcom/growthbeat/message/model/Message$MessageType;

.field public static final enum plain:Lcom/growthbeat/message/model/Message$MessageType;

.field public static final enum swipe:Lcom/growthbeat/message/model/Message$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 221
    new-instance v0, Lcom/growthbeat/message/model/Message$MessageType;

    const-string v1, "plain"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/growthbeat/message/model/Message$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/message/model/Message$MessageType;->plain:Lcom/growthbeat/message/model/Message$MessageType;

    .line 222
    new-instance v1, Lcom/growthbeat/message/model/Message$MessageType;

    const-string v3, "card"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/growthbeat/message/model/Message$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/growthbeat/message/model/Message$MessageType;->card:Lcom/growthbeat/message/model/Message$MessageType;

    .line 223
    new-instance v3, Lcom/growthbeat/message/model/Message$MessageType;

    const-string v5, "swipe"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/growthbeat/message/model/Message$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/growthbeat/message/model/Message$MessageType;->swipe:Lcom/growthbeat/message/model/Message$MessageType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/growthbeat/message/model/Message$MessageType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 220
    sput-object v5, Lcom/growthbeat/message/model/Message$MessageType;->$VALUES:[Lcom/growthbeat/message/model/Message$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/growthbeat/message/model/Message$MessageType;
    .locals 1

    .line 220
    const-class v0, Lcom/growthbeat/message/model/Message$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/growthbeat/message/model/Message$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/growthbeat/message/model/Message$MessageType;
    .locals 1

    .line 220
    sget-object v0, Lcom/growthbeat/message/model/Message$MessageType;->$VALUES:[Lcom/growthbeat/message/model/Message$MessageType;

    invoke-virtual {v0}, [Lcom/growthbeat/message/model/Message$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/growthbeat/message/model/Message$MessageType;

    return-object v0
.end method
