.class synthetic Lcom/growthbeat/message/MessageImageDownloader$1;
.super Ljava/lang/Object;
.source "MessageImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthbeat/message/MessageImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$growthbeat$message$model$Button$ButtonType:[I

.field static final synthetic $SwitchMap$com$growthbeat$message$model$Message$MessageType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 88
    invoke-static {}, Lcom/growthbeat/message/model/Button$ButtonType;->values()[Lcom/growthbeat/message/model/Button$ButtonType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/growthbeat/message/MessageImageDownloader$1;->$SwitchMap$com$growthbeat$message$model$Button$ButtonType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/growthbeat/message/model/Button$ButtonType;->image:Lcom/growthbeat/message/model/Button$ButtonType;

    invoke-virtual {v2}, Lcom/growthbeat/message/model/Button$ButtonType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/growthbeat/message/MessageImageDownloader$1;->$SwitchMap$com$growthbeat$message$model$Button$ButtonType:[I

    sget-object v3, Lcom/growthbeat/message/model/Button$ButtonType;->close:Lcom/growthbeat/message/model/Button$ButtonType;

    invoke-virtual {v3}, Lcom/growthbeat/message/model/Button$ButtonType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    :catch_1
    invoke-static {}, Lcom/growthbeat/message/model/Message$MessageType;->values()[Lcom/growthbeat/message/model/Message$MessageType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/growthbeat/message/MessageImageDownloader$1;->$SwitchMap$com$growthbeat$message$model$Message$MessageType:[I

    :try_start_2
    sget-object v3, Lcom/growthbeat/message/model/Message$MessageType;->card:Lcom/growthbeat/message/model/Message$MessageType;

    invoke-virtual {v3}, Lcom/growthbeat/message/model/Message$MessageType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/growthbeat/message/MessageImageDownloader$1;->$SwitchMap$com$growthbeat$message$model$Message$MessageType:[I

    sget-object v2, Lcom/growthbeat/message/model/Message$MessageType;->swipe:Lcom/growthbeat/message/model/Message$MessageType;

    invoke-virtual {v2}, Lcom/growthbeat/message/model/Message$MessageType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
