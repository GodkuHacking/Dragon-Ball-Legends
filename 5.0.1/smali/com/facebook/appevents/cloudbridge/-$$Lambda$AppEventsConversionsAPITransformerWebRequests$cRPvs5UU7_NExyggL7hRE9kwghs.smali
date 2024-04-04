.class public final synthetic Lcom/facebook/appevents/cloudbridge/-$$Lambda$AppEventsConversionsAPITransformerWebRequests$cRPvs5UU7_NExyggL7hRE9kwghs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/facebook/GraphRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/GraphRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/cloudbridge/-$$Lambda$AppEventsConversionsAPITransformerWebRequests$cRPvs5UU7_NExyggL7hRE9kwghs;->f$0:Lcom/facebook/GraphRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/appevents/cloudbridge/-$$Lambda$AppEventsConversionsAPITransformerWebRequests$cRPvs5UU7_NExyggL7hRE9kwghs;->f$0:Lcom/facebook/GraphRequest;

    invoke-static {v0}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests;->lambda$cRPvs5UU7_NExyggL7hRE9kwghs(Lcom/facebook/GraphRequest;)V

    return-void
.end method
