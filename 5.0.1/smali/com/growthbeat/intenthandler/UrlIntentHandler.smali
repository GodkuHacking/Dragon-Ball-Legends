.class public Lcom/growthbeat/intenthandler/UrlIntentHandler;
.super Ljava/lang/Object;
.source "UrlIntentHandler.java"

# interfaces
.implements Lcom/growthbeat/intenthandler/IntentHandler;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/growthbeat/intenthandler/UrlIntentHandler;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public handle(Lcom/growthbeat/model/Intent;)Z
    .locals 3

    .line 20
    invoke-virtual {p1}, Lcom/growthbeat/model/Intent;->getType()Lcom/growthbeat/model/Intent$Type;

    move-result-object v0

    sget-object v1, Lcom/growthbeat/model/Intent$Type;->url:Lcom/growthbeat/model/Intent$Type;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 23
    :cond_0
    instance-of v0, p1, Lcom/growthbeat/model/UrlIntent;

    if-nez v0, :cond_1

    return v2

    .line 26
    :cond_1
    check-cast p1, Lcom/growthbeat/model/UrlIntent;

    .line 28
    invoke-virtual {p1}, Lcom/growthbeat/model/UrlIntent;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    .line 30
    :cond_2
    invoke-virtual {p1}, Lcom/growthbeat/model/UrlIntent;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 33
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    iget-object p1, p0, Lcom/growthbeat/intenthandler/UrlIntentHandler;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
