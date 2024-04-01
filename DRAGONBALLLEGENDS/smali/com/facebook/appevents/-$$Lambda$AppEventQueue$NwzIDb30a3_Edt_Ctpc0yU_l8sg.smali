.class public final synthetic Lcom/facebook/appevents/-$$Lambda$AppEventQueue$NwzIDb30a3_Edt_Ctpc0yU_l8sg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/facebook/appevents/AccessTokenAppIdPair;

.field public final synthetic f$1:Lcom/facebook/appevents/AppEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/-$$Lambda$AppEventQueue$NwzIDb30a3_Edt_Ctpc0yU_l8sg;->f$0:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iput-object p2, p0, Lcom/facebook/appevents/-$$Lambda$AppEventQueue$NwzIDb30a3_Edt_Ctpc0yU_l8sg;->f$1:Lcom/facebook/appevents/AppEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/appevents/-$$Lambda$AppEventQueue$NwzIDb30a3_Edt_Ctpc0yU_l8sg;->f$0:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iget-object v1, p0, Lcom/facebook/appevents/-$$Lambda$AppEventQueue$NwzIDb30a3_Edt_Ctpc0yU_l8sg;->f$1:Lcom/facebook/appevents/AppEvent;

    invoke-static {v0, v1}, Lcom/facebook/appevents/AppEventQueue;->lambda$NwzIDb30a3_Edt_Ctpc0yU_l8sg(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V

    return-void
.end method
