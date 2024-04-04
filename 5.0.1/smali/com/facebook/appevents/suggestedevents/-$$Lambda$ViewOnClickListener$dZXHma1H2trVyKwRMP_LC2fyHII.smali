.class public final synthetic Lcom/facebook/appevents/suggestedevents/-$$Lambda$ViewOnClickListener$dZXHma1H2trVyKwRMP_LC2fyHII;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/json/JSONObject;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/suggestedevents/-$$Lambda$ViewOnClickListener$dZXHma1H2trVyKwRMP_LC2fyHII;->f$0:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/facebook/appevents/suggestedevents/-$$Lambda$ViewOnClickListener$dZXHma1H2trVyKwRMP_LC2fyHII;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/appevents/suggestedevents/-$$Lambda$ViewOnClickListener$dZXHma1H2trVyKwRMP_LC2fyHII;->f$2:Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;

    iput-object p4, p0, Lcom/facebook/appevents/suggestedevents/-$$Lambda$ViewOnClickListener$dZXHma1H2trVyKwRMP_LC2fyHII;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/appevents/suggestedevents/-$$Lambda$ViewOnClickListener$dZXHma1H2trVyKwRMP_LC2fyHII;->f$0:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/facebook/appevents/suggestedevents/-$$Lambda$ViewOnClickListener$dZXHma1H2trVyKwRMP_LC2fyHII;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/appevents/suggestedevents/-$$Lambda$ViewOnClickListener$dZXHma1H2trVyKwRMP_LC2fyHII;->f$2:Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;

    iget-object v3, p0, Lcom/facebook/appevents/suggestedevents/-$$Lambda$ViewOnClickListener$dZXHma1H2trVyKwRMP_LC2fyHII;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;->lambda$dZXHma1H2trVyKwRMP_LC2fyHII(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;Ljava/lang/String;)V

    return-void
.end method
