.class public Lcom/growthbeat/message/GrowthMessage;
.super Ljava/lang/Object;
.source "GrowthMessage.java"


# static fields
.field private static final instance:Lcom/growthbeat/message/GrowthMessage;


# instance fields
.field private applicationId:Ljava/lang/String;

.field private credentialId:Ljava/lang/String;

.field private initialized:Z

.field private lastMessageOpenedTimeMills:J

.field private final logger:Lcom/growthbeat/Logger;

.field private final messageExecutor:Lcom/growthbeat/GrowthbeatThreadExecutor;

.field private messageHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/growthbeat/message/handler/BaseMessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private messageImageCacheManager:Lcom/growthbeat/message/MessageImageCacheManager;

.field private messageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/growthbeat/message/MessageQueue;",
            ">;"
        }
    .end annotation
.end field

.field private messageSemaphore:Ljava/util/concurrent/Semaphore;

.field private final scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private showMessageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/growthbeat/message/handler/ShowMessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private showingMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/growthbeat/message/GrowthMessage;

    invoke-direct {v0}, Lcom/growthbeat/message/GrowthMessage;-><init>()V

    sput-object v0, Lcom/growthbeat/message/GrowthMessage;->instance:Lcom/growthbeat/message/GrowthMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/growthbeat/Logger;

    const-string v1, "GrowthMessage"

    invoke-direct {v0, v1}, Lcom/growthbeat/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/growthbeat/message/GrowthMessage;->logger:Lcom/growthbeat/Logger;

    .line 44
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/growthbeat/message/GrowthMessage;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/growthbeat/message/GrowthMessage;->applicationId:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/growthbeat/message/GrowthMessage;->credentialId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/growthbeat/message/GrowthMessage;->initialized:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/growthbeat/message/GrowthMessage;->messageHandlers:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/growthbeat/message/GrowthMessage;->messageSemaphore:Ljava/util/concurrent/Semaphore;

    .line 52
    new-instance v0, Lcom/growthbeat/message/MessageImageCacheManager;

    invoke-direct {v0}, Lcom/growthbeat/message/MessageImageCacheManager;-><init>()V

    iput-object v0, p0, Lcom/growthbeat/message/GrowthMessage;->messageImageCacheManager:Lcom/growthbeat/message/MessageImageCacheManager;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/growthbeat/message/GrowthMessage;->messageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/growthbeat/message/GrowthMessage;->showMessageHandlers:Ljava/util/Map;

    .line 56
    new-instance v0, Lcom/growthbeat/GrowthbeatThreadExecutor;

    invoke-direct {v0}, Lcom/growthbeat/GrowthbeatThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/growthbeat/message/GrowthMessage;->messageExecutor:Lcom/growthbeat/GrowthbeatThreadExecutor;

    return-void
.end method

.method static synthetic access$000(Lcom/growthbeat/message/GrowthMessage;)Lcom/growthbeat/Logger;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/growthbeat/message/GrowthMessage;->logger:Lcom/growthbeat/Logger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/growthbeat/message/GrowthMessage;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/growthbeat/message/GrowthMessage;->applicationId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/growthbeat/message/GrowthMessage;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/growthbeat/message/GrowthMessage;->credentialId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/growthbeat/message/GrowthMessage;)Ljava/util/Map;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/growthbeat/message/GrowthMessage;->showMessageHandlers:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/growthbeat/message/GrowthMessage;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/growthbeat/message/GrowthMessage;->messageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic access$500(Lcom/growthbeat/message/GrowthMessage;)Lcom/growthbeat/GrowthbeatThreadExecutor;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/growthbeat/message/GrowthMessage;->messageExecutor:Lcom/growthbeat/GrowthbeatThreadExecutor;

    return-object p0
.end method

.method static synthetic access$600(Lcom/growthbeat/message/GrowthMessage;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/growthbeat/message/GrowthMessage;->messageSemaphore:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$700(Lcom/growthbeat/message/GrowthMessage;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/growthbeat/message/GrowthMessage;->lastMessageOpenedTimeMills:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/growthbeat/message/GrowthMessage;J)J
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/growthbeat/message/GrowthMessage;->lastMessageOpenedTimeMills:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/growthbeat/message/GrowthMessage;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/growthbeat/message/GrowthMessage;->showingMessage:Z

    return p0
.end method

.method static synthetic access$802(Lcom/growthbeat/message/GrowthMessage;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/growthbeat/message/GrowthMessage;->showingMessage:Z

    return p1
.end method

.method static synthetic access$900(Lcom/growthbeat/message/GrowthMessage;Lcom/growthbeat/message/MessageQueue;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/growthbeat/message/GrowthMessage;->openMessage(Lcom/growthbeat/message/MessageQueue;)V

    return-void
.end method

.method public static getInstance()Lcom/growthbeat/message/GrowthMessage;
    .locals 1

    .line 63
    sget-object v0, Lcom/growthbeat/message/GrowthMessage;->instance:Lcom/growthbeat/message/GrowthMessage;

    return-object v0
.end method

.method private openMessage(Lcom/growthbeat/message/MessageQueue;)V
    .locals 4

    .line 156
    new-instance v0, Lcom/growthbeat/message/GrowthMessage$2;

    invoke-direct {v0, p0, p1}, Lcom/growthbeat/message/GrowthMessage$2;-><init>(Lcom/growthbeat/message/GrowthMessage;Lcom/growthbeat/message/MessageQueue;)V

    .line 182
    iget-object v1, p0, Lcom/growthbeat/message/GrowthMessage;->messageHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/growthbeat/message/handler/MessageHandler;

    .line 183
    invoke-virtual {p1}, Lcom/growthbeat/message/MessageQueue;->getMessage()Lcom/growthbeat/message/model/Message;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/growthbeat/message/handler/MessageHandler;->handle(Lcom/growthbeat/message/model/Message;Lcom/growthbeat/message/handler/MessageHandler$MessageDonwloadHandler;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addMessageHandler(Lcom/growthbeat/message/handler/BaseMessageHandler;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage;->messageHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentialId()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage;->credentialId:Ljava/lang/String;

    return-object v0
.end method

.method public getLogger()Lcom/growthbeat/Logger;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage;->logger:Lcom/growthbeat/Logger;

    return-object v0
.end method

.method public getMessageImageCacheManager()Lcom/growthbeat/message/MessageImageCacheManager;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage;->messageImageCacheManager:Lcom/growthbeat/message/MessageImageCacheManager;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 68
    iget-boolean v0, p0, Lcom/growthbeat/message/GrowthMessage;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/growthbeat/message/GrowthMessage;->initialized:Z

    if-nez p1, :cond_1

    .line 73
    iget-object p1, p0, Lcom/growthbeat/message/GrowthMessage;->logger:Lcom/growthbeat/Logger;

    const-string p2, "The context parameter cannot be null."

    invoke-virtual {p1, p2}, Lcom/growthbeat/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 77
    :cond_1
    iput-object p2, p0, Lcom/growthbeat/message/GrowthMessage;->applicationId:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/growthbeat/message/GrowthMessage;->credentialId:Ljava/lang/String;

    const/4 p2, 0x0

    .line 79
    iput-boolean p2, p0, Lcom/growthbeat/message/GrowthMessage;->showingMessage:Z

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/growthbeat/message/GrowthMessage;->lastMessageOpenedTimeMills:J

    const/4 p3, 0x3

    new-array p3, p3, [Lcom/growthbeat/message/handler/BaseMessageHandler;

    .line 82
    new-instance v1, Lcom/growthbeat/message/handler/PlainMessageHandler;

    invoke-direct {v1, p1}, Lcom/growthbeat/message/handler/PlainMessageHandler;-><init>(Landroid/content/Context;)V

    aput-object v1, p3, p2

    new-instance p2, Lcom/growthbeat/message/handler/CardMessageHandler;

    invoke-direct {p2, p1}, Lcom/growthbeat/message/handler/CardMessageHandler;-><init>(Landroid/content/Context;)V

    aput-object p2, p3, v0

    const/4 p2, 0x2

    new-instance v0, Lcom/growthbeat/message/handler/SwipeMessageHandler;

    invoke-direct {v0, p1}, Lcom/growthbeat/message/handler/SwipeMessageHandler;-><init>(Landroid/content/Context;)V

    aput-object v0, p3, p2

    .line 83
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/growthbeat/message/GrowthMessage;->setMessageHandlers(Ljava/util/List;)V

    return-void
.end method

.method public notifyPopNextMessage()V
    .locals 5

    .line 252
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/growthbeat/message/GrowthMessage$4;

    invoke-direct {v1, p0}, Lcom/growthbeat/message/GrowthMessage$4;-><init>(Lcom/growthbeat/message/GrowthMessage;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public openMessageIfExists()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage;->messageExecutor:Lcom/growthbeat/GrowthbeatThreadExecutor;

    new-instance v1, Lcom/growthbeat/message/GrowthMessage$3;

    invoke-direct {v1, p0}, Lcom/growthbeat/message/GrowthMessage$3;-><init>(Lcom/growthbeat/message/GrowthMessage;)V

    invoke-virtual {v0, v1}, Lcom/growthbeat/GrowthbeatThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public receiveMessage(ILjava/lang/String;Lcom/growthbeat/message/handler/ShowMessageHandler;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/growthbeat/message/GrowthMessage;->messageExecutor:Lcom/growthbeat/GrowthbeatThreadExecutor;

    new-instance v1, Lcom/growthbeat/message/GrowthMessage$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/growthbeat/message/GrowthMessage$1;-><init>(Lcom/growthbeat/message/GrowthMessage;ILcom/growthbeat/message/handler/ShowMessageHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/growthbeat/GrowthbeatThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public selectButton(Lcom/growthbeat/message/model/Button;Lcom/growthbeat/message/model/Message;)V
    .locals 3

    .line 193
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object v0

    invoke-virtual {p1}, Lcom/growthbeat/message/model/Button;->getIntent()Lcom/growthbeat/model/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/growthbeat/Growthbeat;->handleIntent(Lcom/growthbeat/model/Intent;)V

    .line 195
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_0

    .line 198
    :try_start_0
    invoke-virtual {p2}, Lcom/growthbeat/message/model/Message;->getTask()Lcom/growthbeat/message/model/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "taskId"

    .line 199
    invoke-virtual {p2}, Lcom/growthbeat/message/model/Message;->getTask()Lcom/growthbeat/message/model/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/growthbeat/message/model/Task;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "messageId"

    .line 201
    invoke-virtual {p2}, Lcom/growthbeat/message/model/Message;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p1, :cond_2

    .line 202
    invoke-virtual {p1}, Lcom/growthbeat/message/model/Button;->getIntent()Lcom/growthbeat/model/Intent;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p2, "intentId"

    .line 203
    invoke-virtual {p1}, Lcom/growthbeat/message/model/Button;->getIntent()Lcom/growthbeat/model/Intent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/growthbeat/model/Intent;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :catch_0
    :cond_2
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object p1

    sget-object p2, Lcom/growthpush/model/Event$EventType;->message:Lcom/growthpush/model/Event$EventType;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SelectButton"

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/growthpush/GrowthPush;->trackEvent(Lcom/growthpush/model/Event$EventType;Ljava/lang/String;Ljava/lang/String;Lcom/growthbeat/message/handler/ShowMessageHandler;)V

    return-void
.end method

.method public setMessageHandlers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/growthbeat/message/handler/BaseMessageHandler;",
            ">;)V"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/growthbeat/message/GrowthMessage;->messageHandlers:Ljava/util/List;

    return-void
.end method

.method public setMessageImageCacheManager(Lcom/growthbeat/message/MessageImageCacheManager;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/growthbeat/message/GrowthMessage;->messageImageCacheManager:Lcom/growthbeat/message/MessageImageCacheManager;

    return-void
.end method
