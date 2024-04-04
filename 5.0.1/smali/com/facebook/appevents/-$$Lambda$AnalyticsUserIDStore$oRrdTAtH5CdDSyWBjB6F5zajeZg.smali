.class public final synthetic Lcom/facebook/appevents/-$$Lambda$AnalyticsUserIDStore$oRrdTAtH5CdDSyWBjB6F5zajeZg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/-$$Lambda$AnalyticsUserIDStore$oRrdTAtH5CdDSyWBjB6F5zajeZg;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/appevents/-$$Lambda$AnalyticsUserIDStore$oRrdTAtH5CdDSyWBjB6F5zajeZg;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/appevents/AnalyticsUserIDStore;->lambda$oRrdTAtH5CdDSyWBjB6F5zajeZg(Ljava/lang/String;)V

    return-void
.end method
