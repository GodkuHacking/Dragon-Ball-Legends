.class public Lcom/growthpush/GrowthPush;
.super Ljava/lang/Object;
.source "GrowthPush.java"


# static fields
.field private static final instance:Lcom/growthpush/GrowthPush;


# instance fields
.field private final analyticsExecutor:Lcom/growthbeat/GrowthbeatThreadExecutor;

.field private applicationId:Ljava/lang/String;

.field private channelId:Ljava/lang/String;

.field private client:Lcom/growthpush/model/ClientV4;

.field private credentialId:Ljava/lang/String;

.field private environment:Lcom/growthpush/model/Environment;

.field private final httpClient:Lcom/growthbeat/http/GrowthbeatHttpClient;

.field private initialized:Z

.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private final logger:Lcom/growthbeat/Logger;

.field private final preference:Lcom/growthbeat/Preference;

.field private final pushExecutor:Lcom/growthbeat/GrowthbeatThreadExecutor;

.field private receiveHandler:Lcom/growthpush/handler/ReceiveHandler;

.field private semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/growthpush/GrowthPush;

    invoke-direct {v0}, Lcom/growthpush/GrowthPush;-><init>()V

    sput-object v0, Lcom/growthpush/GrowthPush;->instance:Lcom/growthpush/GrowthPush;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/growthbeat/Logger;

    const-string v1, "GrowthPush"

    invoke-direct {v0, v1}, Lcom/growthbeat/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    .line 37
    new-instance v0, Lcom/growthbeat/http/GrowthbeatHttpClient;

    const-string v1, "https://api.growthpush.com/"

    const v2, 0xea60

    invoke-direct {v0, v1, v2, v2}, Lcom/growthbeat/http/GrowthbeatHttpClient;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/growthpush/GrowthPush;->httpClient:Lcom/growthbeat/http/GrowthbeatHttpClient;

    .line 39
    new-instance v0, Lcom/growthbeat/Preference;

    const-string v1, "growthpush-preferences"

    invoke-direct {v0, v1}, Lcom/growthbeat/Preference;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/growthpush/GrowthPush;->preference:Lcom/growthbeat/Preference;

    .line 40
    new-instance v0, Lcom/growthbeat/GrowthbeatThreadExecutor;

    invoke-direct {v0}, Lcom/growthbeat/GrowthbeatThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/growthpush/GrowthPush;->pushExecutor:Lcom/growthbeat/GrowthbeatThreadExecutor;

    .line 41
    new-instance v0, Lcom/growthbeat/GrowthbeatThreadExecutor;

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/growthbeat/GrowthbeatThreadExecutor;-><init>(II)V

    iput-object v0, p0, Lcom/growthpush/GrowthPush;->analyticsExecutor:Lcom/growthbeat/GrowthbeatThreadExecutor;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/growthpush/GrowthPush;->client:Lcom/growthpush/model/ClientV4;

    .line 44
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v2, p0, Lcom/growthpush/GrowthPush;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 45
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/growthpush/GrowthPush;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 46
    new-instance v1, Lcom/growthpush/handler/DefaultReceiveHandler;

    invoke-direct {v1}, Lcom/growthpush/handler/DefaultReceiveHandler;-><init>()V

    iput-object v1, p0, Lcom/growthpush/GrowthPush;->receiveHandler:Lcom/growthpush/handler/ReceiveHandler;

    .line 50
    iput-object v0, p0, Lcom/growthpush/GrowthPush;->environment:Lcom/growthpush/model/Environment;

    .line 51
    iput-object v0, p0, Lcom/growthpush/GrowthPush;->channelId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/growthpush/GrowthPush;->initialized:Z

    return-void
.end method

.method static synthetic access$000(Lcom/growthpush/GrowthPush;)Lcom/growthbeat/Logger;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/growthpush/GrowthPush;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/growthpush/GrowthPush;->createClient(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/growthpush/GrowthPush;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/growthpush/GrowthPush;->applicationId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/growthpush/GrowthPush;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/growthpush/GrowthPush;->credentialId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/growthpush/GrowthPush;Lcom/growthpush/model/Tag$TagType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/growthpush/GrowthPush;->setTagSynchronously(Lcom/growthpush/model/Tag$TagType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/growthpush/GrowthPush;)Lcom/growthbeat/Preference;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/growthpush/GrowthPush;->preference:Lcom/growthbeat/Preference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/growthpush/GrowthPush;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/growthpush/GrowthPush;->updateClient(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/growthpush/GrowthPush;)Lcom/growthpush/model/ClientV4;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/growthpush/GrowthPush;->client:Lcom/growthpush/model/ClientV4;

    return-object p0
.end method

.method static synthetic access$402(Lcom/growthpush/GrowthPush;Lcom/growthpush/model/ClientV4;)Lcom/growthpush/model/ClientV4;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/growthpush/GrowthPush;->client:Lcom/growthpush/model/ClientV4;

    return-object p1
.end method

.method static synthetic access$500(Lcom/growthpush/GrowthPush;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/growthpush/GrowthPush;->latch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$600(Lcom/growthpush/GrowthPush;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/growthpush/GrowthPush;->setAdvertisingId()V

    return-void
.end method

.method static synthetic access$700(Lcom/growthpush/GrowthPush;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/growthpush/GrowthPush;->setTrackingEnabled()V

    return-void
.end method

.method static synthetic access$800(Lcom/growthpush/GrowthPush;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/growthpush/GrowthPush;->setDeviceTags()V

    return-void
.end method

.method static synthetic access$900(Lcom/growthpush/GrowthPush;)Z
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/growthpush/GrowthPush;->waitClientRegistration()Z

    move-result p0

    return p0
.end method

.method private createClient(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    :try_start_0
    iget-object v3, p0, Lcom/growthpush/GrowthPush;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 226
    invoke-static {}, Lcom/growthpush/model/ClientV4;->load()Lcom/growthpush/model/ClientV4;

    move-result-object v3

    const/4 v4, 0x3

    if-eqz v3, :cond_0

    .line 227
    invoke-virtual {v3}, Lcom/growthpush/model/ClientV4;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 228
    iput-object v3, p0, Lcom/growthpush/GrowthPush;->client:Lcom/growthpush/model/ClientV4;

    .line 229
    iget-object p1, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    const-string p2, "ClientV4 already created... (id: %s, token: %s, environment: %s)"

    new-array v4, v4, [Ljava/lang/Object;

    .line 230
    invoke-virtual {v3}, Lcom/growthpush/model/ClientV4;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3}, Lcom/growthpush/model/ClientV4;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    iget-object v3, p0, Lcom/growthpush/GrowthPush;->environment:Lcom/growthpush/model/Environment;

    aput-object v3, v4, v0

    .line 229
    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v3, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    const-string v5, "Create client... (id: %s, token: %s, environment: %s)"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    iget-object v6, p0, Lcom/growthpush/GrowthPush;->environment:Lcom/growthpush/model/Environment;

    aput-object v6, v4, v0

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 234
    iget-object v3, p0, Lcom/growthpush/GrowthPush;->applicationId:Ljava/lang/String;

    iget-object v4, p0, Lcom/growthpush/GrowthPush;->credentialId:Ljava/lang/String;

    iget-object v5, p0, Lcom/growthpush/GrowthPush;->environment:Lcom/growthpush/model/Environment;

    invoke-static {p1, v3, v4, p2, v5}, Lcom/growthpush/model/ClientV4;->attach(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/growthpush/model/Environment;)Lcom/growthpush/model/ClientV4;

    move-result-object p1

    .line 235
    iget-object p2, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    const-string v3, "Create client success (id: %s)"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/growthpush/model/ClientV4;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 236
    invoke-static {p1}, Lcom/growthpush/model/ClientV4;->save(Lcom/growthpush/model/ClientV4;)V

    .line 237
    iput-object p1, p0, Lcom/growthpush/GrowthPush;->client:Lcom/growthpush/model/ClientV4;

    .line 240
    :goto_0
    iget-object p1, p0, Lcom/growthpush/GrowthPush;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/growthpush/GrowthPushException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 244
    :try_start_1
    iget-object p2, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    const-string v3, "Create client fail. %s, code: %d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/growthpush/GrowthPushException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-virtual {p1}, Lcom/growthpush/GrowthPushException;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/growthbeat/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 246
    :goto_1
    iget-object p2, p0, Lcom/growthpush/GrowthPush;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 247
    throw p1

    .line 246
    :catch_1
    :goto_2
    iget-object p1, p0, Lcom/growthpush/GrowthPush;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public static getInstance()Lcom/growthpush/GrowthPush;
    .locals 1

    .line 60
    sget-object v0, Lcom/growthpush/GrowthPush;->instance:Lcom/growthpush/GrowthPush;

    return-object v0
.end method

.method private setAdvertisingId()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/growthpush/GrowthPush;->analyticsExecutor:Lcom/growthbeat/GrowthbeatThreadExecutor;

    new-instance v1, Lcom/growthpush/GrowthPush$6;

    invoke-direct {v1, p0}, Lcom/growthpush/GrowthPush$6;-><init>(Lcom/growthpush/GrowthPush;)V

    invoke-virtual {v0, v1}, Lcom/growthbeat/GrowthbeatThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setDeviceTags()V
    .locals 2

    .line 391
    invoke-static {}, Lcom/growthbeat/utils/DeviceUtils;->getModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device"

    invoke-virtual {p0, v1, v0}, Lcom/growthpush/GrowthPush;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/growthbeat/utils/DeviceUtils;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OS"

    invoke-virtual {p0, v1, v0}, Lcom/growthpush/GrowthPush;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/growthbeat/utils/DeviceUtils;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Language"

    invoke-virtual {p0, v1, v0}, Lcom/growthpush/GrowthPush;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/growthbeat/utils/DeviceUtils;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Time Zone"

    invoke-virtual {p0, v1, v0}, Lcom/growthpush/GrowthPush;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/Growthbeat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/growthbeat/utils/AppUtils;->getaAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Version"

    invoke-virtual {p0, v1, v0}, Lcom/growthpush/GrowthPush;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/Growthbeat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/growthbeat/utils/AppUtils;->getAppBuild(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Build"

    invoke-virtual {p0, v1, v0}, Lcom/growthpush/GrowthPush;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setTag(Lcom/growthpush/model/Tag$TagType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 345
    iget-boolean v0, p0, Lcom/growthpush/GrowthPush;->initialized:Z

    if-nez v0, :cond_0

    .line 346
    iget-object p1, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    const-string p2, "call after initialized."

    invoke-virtual {p1, p2}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 351
    iget-object p1, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    const-string p2, "Tag name cannot be null."

    invoke-virtual {p1, p2}, Lcom/growthbeat/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/growthpush/GrowthPush;->analyticsExecutor:Lcom/growthbeat/GrowthbeatThreadExecutor;

    new-instance v1, Lcom/growthpush/GrowthPush$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/growthpush/GrowthPush$5;-><init>(Lcom/growthpush/GrowthPush;Lcom/growthpush/model/Tag$TagType;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x5a

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p1, p2}, Lcom/growthbeat/GrowthbeatThreadExecutor;->executeScheduledTimeout(Ljava/lang/Runnable;ILjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private setTagSynchronously(Lcom/growthpush/model/Tag$TagType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    if-nez p2, :cond_0

    .line 365
    iget-object p1, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    const-string p2, "Tag name cannot be null."

    invoke-virtual {p1, p2}, Lcom/growthbeat/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 369
    :cond_0
    invoke-static {p1, p2}, Lcom/growthpush/model/Tag;->load(Lcom/growthpush/model/Tag$TagType;Ljava/lang/String;)Lcom/growthpush/model/Tag;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 370
    invoke-virtual {v0}, Lcom/growthpush/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    :cond_1
    iget-object p1, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object p3, v0, v2

    const-string p2, "Tag exists with the same value. (name: %s, value: %s)"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 375
    :cond_2
    invoke-direct {p0}, Lcom/growthpush/GrowthPush;->waitClientRegistration()Z

    move-result v0

    if-nez v0, :cond_3

    .line 376
    iget-object p1, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object p3, v0, v2

    const-string p2, "setTag registering client timeout. (name: %s, value: %s)"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/growthbeat/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 380
    :cond_3
    iget-object v0, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v3

    aput-object p3, v4, v2

    const-string v5, "Sending tag... (name: %s, value: %s)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 382
    :try_start_0
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v0

    iget-object v0, v0, Lcom/growthpush/GrowthPush;->client:Lcom/growthpush/model/ClientV4;

    invoke-virtual {v0}, Lcom/growthpush/model/ClientV4;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/growthpush/GrowthPush;->applicationId:Ljava/lang/String;

    iget-object v6, p0, Lcom/growthpush/GrowthPush;->credentialId:Ljava/lang/String;

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Lcom/growthpush/model/Tag;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/growthpush/model/Tag$TagType;Ljava/lang/String;Ljava/lang/String;)Lcom/growthpush/model/Tag;

    move-result-object v0

    .line 383
    iget-object v4, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    const-string v5, "Sending tag success (name: %s, value: %s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    aput-object p3, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 384
    invoke-static {v0, p1, p2}, Lcom/growthpush/model/Tag;->save(Lcom/growthpush/model/Tag;Lcom/growthpush/model/Tag$TagType;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/growthpush/GrowthPushException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 386
    iget-object p2, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/growthpush/GrowthPushException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v3

    const-string p1, "Sending tag fail. %s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/growthbeat/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setTrackingEnabled()V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/growthpush/GrowthPush;->analyticsExecutor:Lcom/growthbeat/GrowthbeatThreadExecutor;

    new-instance v1, Lcom/growthpush/GrowthPush$7;

    invoke-direct {v1, p0}, Lcom/growthpush/GrowthPush$7;-><init>(Lcom/growthpush/GrowthPush;)V

    invoke-virtual {v0, v1}, Lcom/growthbeat/GrowthbeatThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateClient(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    :try_start_0
    iget-object v3, p0, Lcom/growthpush/GrowthPush;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 257
    invoke-static {}, Lcom/growthpush/model/ClientV4;->load()Lcom/growthpush/model/ClientV4;

    move-result-object v3

    const/4 v4, 0x3

    if-eqz v3, :cond_0

    .line 258
    invoke-virtual {v3}, Lcom/growthpush/model/ClientV4;->getEnvironment()Lcom/growthpush/model/Environment;

    move-result-object v5

    iget-object v6, p0, Lcom/growthpush/GrowthPush;->environment:Lcom/growthpush/model/Environment;

    if-ne v5, v6, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v3}, Lcom/growthpush/model/ClientV4;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 259
    iget-object v5, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    const-string v6, "ClientV4 already updated. (id: %s, token: %s, environment: %s)"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    iget-object p1, p0, Lcom/growthpush/GrowthPush;->environment:Lcom/growthpush/model/Environment;

    aput-object p1, v4, v0

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 261
    iput-object v3, p0, Lcom/growthpush/GrowthPush;->client:Lcom/growthpush/model/ClientV4;

    goto :goto_0

    .line 264
    :cond_0
    iget-object v3, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    const-string v5, "Updating client... (id: %s, token: %s, environment: %s)"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    iget-object v6, p0, Lcom/growthpush/GrowthPush;->environment:Lcom/growthpush/model/Environment;

    aput-object v6, v4, v0

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 266
    iget-object v3, p0, Lcom/growthpush/GrowthPush;->applicationId:Ljava/lang/String;

    iget-object v4, p0, Lcom/growthpush/GrowthPush;->credentialId:Ljava/lang/String;

    iget-object v5, p0, Lcom/growthpush/GrowthPush;->environment:Lcom/growthpush/model/Environment;

    invoke-static {p1, v3, v4, p2, v5}, Lcom/growthpush/model/ClientV4;->attach(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/growthpush/model/Environment;)Lcom/growthpush/model/ClientV4;

    move-result-object p2

    .line 267
    iget-object v3, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    const-string v4, "Update client success (clientId: %s)"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 269
    invoke-static {p2}, Lcom/growthpush/model/ClientV4;->save(Lcom/growthpush/model/ClientV4;)V

    .line 270
    iput-object p2, p0, Lcom/growthpush/GrowthPush;->client:Lcom/growthpush/model/ClientV4;

    .line 273
    :goto_0
    iget-object p1, p0, Lcom/growthpush/GrowthPush;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/growthpush/GrowthPushException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 277
    :try_start_1
    iget-object p2, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    const-string v3, "Update client fail. %s, code: %d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/growthpush/GrowthPushException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-virtual {p1}, Lcom/growthpush/GrowthPushException;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/growthbeat/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 279
    :goto_1
    iget-object p2, p0, Lcom/growthpush/GrowthPush;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 280
    throw p1

    .line 279
    :catch_1
    :goto_2
    iget-object p1, p0, Lcom/growthpush/GrowthPush;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method private waitClientRegistration()Z
    .locals 4

    .line 431
    iget-object v0, p0, Lcom/growthpush/GrowthPush;->client:Lcom/growthpush/model/ClientV4;

    if-nez v0, :cond_0

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/growthpush/GrowthPush;->latch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public deleteDefaultNotificationChannel()V
    .locals 2

    .line 459
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 460
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/Growthbeat;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const-string v1, "com.growthpush.notification"

    .line 462
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/growthpush/GrowthPush;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpClient()Lcom/growthbeat/http/GrowthbeatHttpClient;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/growthpush/GrowthPush;->httpClient:Lcom/growthbeat/http/GrowthbeatHttpClient;

    return-object v0
.end method

.method public getLogger()Lcom/growthbeat/Logger;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    return-object v0
.end method

.method public getPreference()Lcom/growthbeat/Preference;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/growthpush/GrowthPush;->preference:Lcom/growthbeat/Preference;

    return-object v0
.end method

.method public getReceiveHandler()Lcom/growthpush/handler/ReceiveHandler;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/growthpush/GrowthPush;->receiveHandler:Lcom/growthpush/handler/ReceiveHandler;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/growthpush/model/Environment;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 64
    invoke-virtual/range {v0 .. v6}, Lcom/growthpush/GrowthPush;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/growthpush/model/Environment;ZLjava/lang/String;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/growthpush/model/Environment;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 68
    invoke-virtual/range {v0 .. v6}, Lcom/growthpush/GrowthPush;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/growthpush/model/Environment;ZLjava/lang/String;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/growthpush/model/Environment;ZLjava/lang/String;)V
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/growthpush/GrowthPush;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/growthpush/GrowthPush;->initialized:Z

    if-nez p1, :cond_1

    .line 80
    iget-object p1, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    const-string p2, "The context parameter cannot be null."

    invoke-virtual {p1, p2}, Lcom/growthbeat/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 84
    :cond_1
    iput-object p2, p0, Lcom/growthpush/GrowthPush;->applicationId:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/growthpush/GrowthPush;->credentialId:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/growthpush/GrowthPush;->environment:Lcom/growthpush/model/Environment;

    .line 87
    iput-object p6, p0, Lcom/growthpush/GrowthPush;->channelId:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object p6

    invoke-virtual {p6, p1, p2, p3}, Lcom/growthbeat/Growthbeat;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/growthbeat/message/GrowthMessage;->getInstance()Lcom/growthbeat/message/GrowthMessage;

    move-result-object p6

    invoke-virtual {p6, p1, p2, p3}, Lcom/growthbeat/message/GrowthMessage;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/growthpush/GrowthPush;->preference:Lcom/growthbeat/Preference;

    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/growthbeat/Growthbeat;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/growthbeat/Preference;->setContext(Landroid/content/Context;)V

    .line 94
    iget-object p1, p0, Lcom/growthpush/GrowthPush;->pushExecutor:Lcom/growthbeat/GrowthbeatThreadExecutor;

    new-instance p2, Lcom/growthpush/GrowthPush$1;

    invoke-direct {p2, p0, p4, p5}, Lcom/growthpush/GrowthPush$1;-><init>(Lcom/growthpush/GrowthPush;Lcom/growthpush/model/Environment;Z)V

    invoke-virtual {p1, p2}, Lcom/growthbeat/GrowthbeatThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerClient(Ljava/lang/String;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/growthpush/GrowthPush;->pushExecutor:Lcom/growthbeat/GrowthbeatThreadExecutor;

    new-instance v1, Lcom/growthpush/GrowthPush$3;

    invoke-direct {v1, p0, p1}, Lcom/growthpush/GrowthPush$3;-><init>(Lcom/growthpush/GrowthPush;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/growthbeat/GrowthbeatThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerFCM()Ljava/lang/String;
    .locals 4

    .line 178
    iget-boolean v0, p0, Lcom/growthpush/GrowthPush;->initialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    const-string v2, "registerFCM: Growth Push must be initialize."

    invoke-virtual {v0, v2}, Lcom/growthbeat/Logger;->warning(Ljava/lang/String;)V

    return-object v1

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/growthpush/GrowthPush;->waitClientRegistration()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "registerClient initialize client timeout."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/growthbeat/Logger;->error(Ljava/lang/String;)V

    return-object v1

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/growthpush/GrowthPush;->client:Lcom/growthpush/model/ClientV4;

    if-nez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    const-string v2, "registerFCM: client is null."

    invoke-virtual {v0, v2}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    return-object v1

    .line 190
    :cond_2
    invoke-virtual {v0}, Lcom/growthpush/model/ClientV4;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestRegistrationId()V
    .locals 2

    .line 154
    iget-boolean v0, p0, Lcom/growthpush/GrowthPush;->initialized:Z

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    const-string v1, "Growth Push must be initialize."

    invoke-virtual {v0, v1}, Lcom/growthbeat/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/growthpush/GrowthPush;->pushExecutor:Lcom/growthbeat/GrowthbeatThreadExecutor;

    new-instance v1, Lcom/growthpush/GrowthPush$2;

    invoke-direct {v1, p0}, Lcom/growthpush/GrowthPush$2;-><init>(Lcom/growthpush/GrowthPush;)V

    invoke-virtual {v0, v1}, Lcom/growthbeat/GrowthbeatThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRegistrationId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/growthpush/GrowthPush;->requestRegistrationId()V

    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/growthpush/GrowthPush;->channelId:Ljava/lang/String;

    return-void
.end method

.method public setReceiveHandler(Lcom/growthpush/handler/ReceiveHandler;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/growthpush/GrowthPush;->receiveHandler:Lcom/growthpush/handler/ReceiveHandler;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0, p1, v0}, Lcom/growthpush/GrowthPush;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 340
    sget-object v0, Lcom/growthpush/model/Tag$TagType;->custom:Lcom/growthpush/model/Tag$TagType;

    invoke-direct {p0, v0, p1, p2}, Lcom/growthpush/GrowthPush;->setTag(Lcom/growthpush/model/Tag$TagType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public trackEvent(Lcom/growthpush/model/Event$EventType;Ljava/lang/String;Ljava/lang/String;Lcom/growthbeat/message/handler/ShowMessageHandler;)V
    .locals 8

    .line 298
    iget-boolean v0, p0, Lcom/growthpush/GrowthPush;->initialized:Z

    if-nez v0, :cond_0

    .line 299
    iget-object p1, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    const-string p2, "call after initialized."

    invoke-virtual {p1, p2}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 304
    iget-object p1, p0, Lcom/growthpush/GrowthPush;->logger:Lcom/growthbeat/Logger;

    const-string p2, "Event name cannot be null."

    invoke-virtual {p1, p2}, Lcom/growthbeat/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/growthpush/GrowthPush;->analyticsExecutor:Lcom/growthbeat/GrowthbeatThreadExecutor;

    new-instance v7, Lcom/growthpush/GrowthPush$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/growthpush/GrowthPush$4;-><init>(Lcom/growthpush/GrowthPush;Ljava/lang/String;Ljava/lang/String;Lcom/growthpush/model/Event$EventType;Lcom/growthbeat/message/handler/ShowMessageHandler;)V

    const/16 p1, 0x5a

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, p1, p2}, Lcom/growthbeat/GrowthbeatThreadExecutor;->executeScheduledTimeout(Ljava/lang/Runnable;ILjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0, p1, v0}, Lcom/growthpush/GrowthPush;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, p1, p2, v0}, Lcom/growthpush/GrowthPush;->trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/growthbeat/message/handler/ShowMessageHandler;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/growthbeat/message/handler/ShowMessageHandler;)V
    .locals 1

    .line 293
    sget-object v0, Lcom/growthpush/model/Event$EventType;->custom:Lcom/growthpush/model/Event$EventType;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/growthpush/GrowthPush;->trackEvent(Lcom/growthpush/model/Event$EventType;Ljava/lang/String;Ljava/lang/String;Lcom/growthbeat/message/handler/ShowMessageHandler;)V

    return-void
.end method
