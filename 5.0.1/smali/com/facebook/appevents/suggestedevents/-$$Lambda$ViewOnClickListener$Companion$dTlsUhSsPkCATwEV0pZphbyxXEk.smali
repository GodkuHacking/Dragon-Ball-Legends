.class public final synthetic Lcom/facebook/appevents/suggestedevents/-$$Lambda$ViewOnClickListener$Companion$dTlsUhSsPkCATwEV0pZphbyxXEk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/suggestedevents/-$$Lambda$ViewOnClickListener$Companion$dTlsUhSsPkCATwEV0pZphbyxXEk;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/appevents/suggestedevents/-$$Lambda$ViewOnClickListener$Companion$dTlsUhSsPkCATwEV0pZphbyxXEk;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/appevents/suggestedevents/-$$Lambda$ViewOnClickListener$Companion$dTlsUhSsPkCATwEV0pZphbyxXEk;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/appevents/suggestedevents/-$$Lambda$ViewOnClickListener$Companion$dTlsUhSsPkCATwEV0pZphbyxXEk;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$Companion;->lambda$dTlsUhSsPkCATwEV0pZphbyxXEk(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
