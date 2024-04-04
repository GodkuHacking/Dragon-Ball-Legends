.class public Lcom/growthbeat/message/MessageImageDownloader;
.super Ljava/lang/Object;
.source "MessageImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/growthbeat/message/MessageImageDownloader$AsyncImageLoader;,
        Lcom/growthbeat/message/MessageImageDownloader$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcom/growthbeat/message/MessageImageDownloader$Callback;

.field private density:F

.field private message:Lcom/growthbeat/message/model/Message;


# direct methods
.method public constructor <init>(Lcom/growthbeat/message/model/Message;FLcom/growthbeat/message/MessageImageDownloader$Callback;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/growthbeat/message/MessageImageDownloader;->message:Lcom/growthbeat/message/model/Message;

    .line 24
    iput-object v0, p0, Lcom/growthbeat/message/MessageImageDownloader;->callback:Lcom/growthbeat/message/MessageImageDownloader$Callback;

    .line 28
    iput-object p1, p0, Lcom/growthbeat/message/MessageImageDownloader;->message:Lcom/growthbeat/message/model/Message;

    .line 29
    iput-object p3, p0, Lcom/growthbeat/message/MessageImageDownloader;->callback:Lcom/growthbeat/message/MessageImageDownloader$Callback;

    .line 30
    iput p2, p0, Lcom/growthbeat/message/MessageImageDownloader;->density:F

    return-void
.end method

.method private addDensityByPictureUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 110
    iget v0, p0, Lcom/growthbeat/message/MessageImageDownloader;->density:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p1

    :cond_0
    const-string v2, "/"

    .line 115
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 116
    array-length v3, p1

    sub-int/2addr v3, v1

    aget-object v3, p1, v3

    const-string v4, "\\."

    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 118
    aget-object v6, v3, v5

    aput-object v6, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    aget-object v0, v3, v1

    const/4 v3, 0x2

    aput-object v0, v4, v3

    const-string v0, "%s@%dx.%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    array-length v4, p1

    sub-int/2addr v4, v1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 120
    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object v0, v2, v1

    const-string p1, "%s/%s"

    .line 121
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private download(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/growthbeat/message/model/Button;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/growthbeat/message/model/Button;

    .line 88
    sget-object v2, Lcom/growthbeat/message/MessageImageDownloader$1;->$SwitchMap$com$growthbeat$message$model$Button$ButtonType:[I

    invoke-virtual {v1}, Lcom/growthbeat/message/model/Button;->getType()Lcom/growthbeat/message/model/Button$ButtonType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/growthbeat/message/model/Button$ButtonType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    check-cast v1, Lcom/growthbeat/message/model/CloseButton;

    invoke-virtual {v1}, Lcom/growthbeat/message/model/CloseButton;->getPicture()Lcom/growthbeat/message/model/Picture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/growthbeat/message/model/Picture;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/growthbeat/message/MessageImageDownloader;->addDensityByPictureUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v1}, Lcom/growthbeat/message/model/CloseButton;->getPicture()Lcom/growthbeat/message/model/Picture;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/growthbeat/message/model/Picture;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    check-cast v1, Lcom/growthbeat/message/model/ImageButton;

    invoke-virtual {v1}, Lcom/growthbeat/message/model/ImageButton;->getPicture()Lcom/growthbeat/message/model/Picture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/growthbeat/message/model/Picture;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/growthbeat/message/MessageImageDownloader;->addDensityByPictureUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v1}, Lcom/growthbeat/message/model/ImageButton;->getPicture()Lcom/growthbeat/message/model/Picture;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/growthbeat/message/model/Picture;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private download(Lcom/growthbeat/message/model/CardMessage;)V
    .locals 3

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-virtual {p1}, Lcom/growthbeat/message/model/CardMessage;->getPicture()Lcom/growthbeat/message/model/Picture;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/growthbeat/message/model/CardMessage;->getPicture()Lcom/growthbeat/message/model/Picture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/message/model/Picture;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/growthbeat/message/model/CardMessage;->getPicture()Lcom/growthbeat/message/model/Picture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/message/model/Picture;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/growthbeat/message/MessageImageDownloader;->addDensityByPictureUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lcom/growthbeat/message/model/CardMessage;->getPicture()Lcom/growthbeat/message/model/Picture;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/growthbeat/message/model/Picture;->setUrl(Ljava/lang/String;)V

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/growthbeat/message/model/CardMessage;->getButtons()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/growthbeat/message/MessageImageDownloader;->download(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 57
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    new-instance p1, Lcom/growthbeat/message/MessageImageDownloader$AsyncImageLoader;

    iget-object v1, p0, Lcom/growthbeat/message/MessageImageDownloader;->callback:Lcom/growthbeat/message/MessageImageDownloader$Callback;

    invoke-direct {p1, v1}, Lcom/growthbeat/message/MessageImageDownloader$AsyncImageLoader;-><init>(Lcom/growthbeat/message/MessageImageDownloader$Callback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/growthbeat/message/MessageImageDownloader$AsyncImageLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private download(Lcom/growthbeat/message/model/SwipeMessage;)V
    .locals 4

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {p1}, Lcom/growthbeat/message/model/SwipeMessage;->getPictures()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/growthbeat/message/model/Picture;

    .line 69
    invoke-virtual {v2}, Lcom/growthbeat/message/model/Picture;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/growthbeat/message/MessageImageDownloader;->addDensityByPictureUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual {v2, v3}, Lcom/growthbeat/message/model/Picture;->setUrl(Ljava/lang/String;)V

    .line 71
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/growthbeat/message/model/SwipeMessage;->getButtons()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/growthbeat/message/MessageImageDownloader;->download(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 75
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    new-instance p1, Lcom/growthbeat/message/MessageImageDownloader$AsyncImageLoader;

    iget-object v1, p0, Lcom/growthbeat/message/MessageImageDownloader;->callback:Lcom/growthbeat/message/MessageImageDownloader$Callback;

    invoke-direct {p1, v1}, Lcom/growthbeat/message/MessageImageDownloader$AsyncImageLoader;-><init>(Lcom/growthbeat/message/MessageImageDownloader$Callback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/growthbeat/message/MessageImageDownloader$AsyncImageLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public download()V
    .locals 2

    .line 34
    sget-object v0, Lcom/growthbeat/message/MessageImageDownloader$1;->$SwitchMap$com$growthbeat$message$model$Message$MessageType:[I

    iget-object v1, p0, Lcom/growthbeat/message/MessageImageDownloader;->message:Lcom/growthbeat/message/model/Message;

    invoke-virtual {v1}, Lcom/growthbeat/message/model/Message;->getType()Lcom/growthbeat/message/model/Message$MessageType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/message/model/Message$MessageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/growthbeat/message/MessageImageDownloader;->message:Lcom/growthbeat/message/model/Message;

    check-cast v0, Lcom/growthbeat/message/model/SwipeMessage;

    invoke-direct {p0, v0}, Lcom/growthbeat/message/MessageImageDownloader;->download(Lcom/growthbeat/message/model/SwipeMessage;)V

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/growthbeat/message/MessageImageDownloader;->message:Lcom/growthbeat/message/model/Message;

    check-cast v0, Lcom/growthbeat/message/model/CardMessage;

    invoke-direct {p0, v0}, Lcom/growthbeat/message/MessageImageDownloader;->download(Lcom/growthbeat/message/model/CardMessage;)V

    :goto_0
    return-void
.end method
