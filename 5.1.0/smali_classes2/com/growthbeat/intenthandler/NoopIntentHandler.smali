.class public Lcom/growthbeat/intenthandler/NoopIntentHandler;
.super Ljava/lang/Object;
.source "NoopIntentHandler.java"

# interfaces
.implements Lcom/growthbeat/intenthandler/IntentHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/growthbeat/model/Intent;)Z
    .locals 1

    .line 9
    invoke-virtual {p1}, Lcom/growthbeat/model/Intent;->getType()Lcom/growthbeat/model/Intent$Type;

    move-result-object p1

    sget-object v0, Lcom/growthbeat/model/Intent$Type;->noop:Lcom/growthbeat/model/Intent$Type;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
