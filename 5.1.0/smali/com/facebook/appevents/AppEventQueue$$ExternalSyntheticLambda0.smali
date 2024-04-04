.class public final synthetic Lcom/facebook/appevents/AppEventQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field public final synthetic f$0:Lcom/facebook/appevents/AccessTokenAppIdPair;

.field public final synthetic f$1:Lcom/facebook/GraphRequest;

.field public final synthetic f$2:Lcom/facebook/appevents/SessionEventsState;

.field public final synthetic f$3:Lcom/facebook/appevents/FlushStatistics;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/AppEventQueue$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventQueue$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/GraphRequest;

    iput-object p3, p0, Lcom/facebook/appevents/AppEventQueue$$ExternalSyntheticLambda0;->f$2:Lcom/facebook/appevents/SessionEventsState;

    iput-object p4, p0, Lcom/facebook/appevents/AppEventQueue$$ExternalSyntheticLambda0;->f$3:Lcom/facebook/appevents/FlushStatistics;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/appevents/AppEventQueue$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventQueue$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/GraphRequest;

    iget-object v2, p0, Lcom/facebook/appevents/AppEventQueue$$ExternalSyntheticLambda0;->f$2:Lcom/facebook/appevents/SessionEventsState;

    iget-object v3, p0, Lcom/facebook/appevents/AppEventQueue$$ExternalSyntheticLambda0;->f$3:Lcom/facebook/appevents/FlushStatistics;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/facebook/appevents/AppEventQueue;->$r8$lambda$rbXoiclsQJkznButjR4YeMDmI-g(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;Lcom/facebook/GraphResponse;)V

    return-void
.end method
