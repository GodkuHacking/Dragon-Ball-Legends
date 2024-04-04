.class public Lcom/growthbeat/intenthandler/IntentHandlerWrapper;
.super Ljava/lang/Object;
.source "IntentHandlerWrapper.java"


# static fields
.field private static final instance:Lcom/growthbeat/intenthandler/IntentHandlerWrapper;


# instance fields
.field private intentHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/growthbeat/intenthandler/IntentHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/growthbeat/intenthandler/IntentHandlerWrapper;

    invoke-direct {v0}, Lcom/growthbeat/intenthandler/IntentHandlerWrapper;-><init>()V

    sput-object v0, Lcom/growthbeat/intenthandler/IntentHandlerWrapper;->instance:Lcom/growthbeat/intenthandler/IntentHandlerWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/growthbeat/intenthandler/IntentHandlerWrapper;->intentHandlers:Ljava/util/List;

    .line 22
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object v0

    iget-object v1, p0, Lcom/growthbeat/intenthandler/IntentHandlerWrapper;->intentHandlers:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/growthbeat/Growthbeat;->setIntentHandlers(Ljava/util/List;)V

    return-void
.end method

.method private static getInstance()Lcom/growthbeat/intenthandler/IntentHandlerWrapper;
    .locals 1

    .line 26
    sget-object v0, Lcom/growthbeat/intenthandler/IntentHandlerWrapper;->instance:Lcom/growthbeat/intenthandler/IntentHandlerWrapper;

    return-object v0
.end method


# virtual methods
.method public addCustomIntentHandler(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/growthbeat/intenthandler/IntentHandlerWrapper;->intentHandlers:Ljava/util/List;

    new-instance v1, Lcom/growthbeat/intenthandler/IntentHandlerWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/growthbeat/intenthandler/IntentHandlerWrapper$1;-><init>(Lcom/growthbeat/intenthandler/IntentHandlerWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNoopIntentHandler()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/growthbeat/intenthandler/IntentHandlerWrapper;->intentHandlers:Ljava/util/List;

    new-instance v1, Lcom/growthbeat/intenthandler/NoopIntentHandler;

    invoke-direct {v1}, Lcom/growthbeat/intenthandler/NoopIntentHandler;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUrlIntentHandler()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/growthbeat/intenthandler/IntentHandlerWrapper;->intentHandlers:Ljava/util/List;

    new-instance v1, Lcom/growthbeat/intenthandler/UrlIntentHandler;

    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/growthbeat/Growthbeat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/growthbeat/intenthandler/UrlIntentHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearIntentHandlers()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/growthbeat/intenthandler/IntentHandlerWrapper;->intentHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
