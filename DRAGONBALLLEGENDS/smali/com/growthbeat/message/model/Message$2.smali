.class synthetic Lcom/growthbeat/message/model/Message$2;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthbeat/message/model/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$growthbeat$message$model$Message$MessageType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    invoke-static {}, Lcom/growthbeat/message/model/Message$MessageType;->values()[Lcom/growthbeat/message/model/Message$MessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/growthbeat/message/model/Message$2;->$SwitchMap$com$growthbeat$message$model$Message$MessageType:[I

    :try_start_0
    sget-object v1, Lcom/growthbeat/message/model/Message$MessageType;->plain:Lcom/growthbeat/message/model/Message$MessageType;

    invoke-virtual {v1}, Lcom/growthbeat/message/model/Message$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/growthbeat/message/model/Message$2;->$SwitchMap$com$growthbeat$message$model$Message$MessageType:[I

    sget-object v1, Lcom/growthbeat/message/model/Message$MessageType;->card:Lcom/growthbeat/message/model/Message$MessageType;

    invoke-virtual {v1}, Lcom/growthbeat/message/model/Message$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/growthbeat/message/model/Message$2;->$SwitchMap$com$growthbeat$message$model$Message$MessageType:[I

    sget-object v1, Lcom/growthbeat/message/model/Message$MessageType;->swipe:Lcom/growthbeat/message/model/Message$MessageType;

    invoke-virtual {v1}, Lcom/growthbeat/message/model/Message$MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
