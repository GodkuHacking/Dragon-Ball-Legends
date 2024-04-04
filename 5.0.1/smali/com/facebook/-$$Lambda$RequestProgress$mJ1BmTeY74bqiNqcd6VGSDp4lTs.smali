.class public final synthetic Lcom/facebook/-$$Lambda$RequestProgress$mJ1BmTeY74bqiNqcd6VGSDp4lTs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/facebook/GraphRequest$Callback;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/GraphRequest$Callback;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/-$$Lambda$RequestProgress$mJ1BmTeY74bqiNqcd6VGSDp4lTs;->f$0:Lcom/facebook/GraphRequest$Callback;

    iput-wide p2, p0, Lcom/facebook/-$$Lambda$RequestProgress$mJ1BmTeY74bqiNqcd6VGSDp4lTs;->f$1:J

    iput-wide p4, p0, Lcom/facebook/-$$Lambda$RequestProgress$mJ1BmTeY74bqiNqcd6VGSDp4lTs;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/facebook/-$$Lambda$RequestProgress$mJ1BmTeY74bqiNqcd6VGSDp4lTs;->f$0:Lcom/facebook/GraphRequest$Callback;

    iget-wide v1, p0, Lcom/facebook/-$$Lambda$RequestProgress$mJ1BmTeY74bqiNqcd6VGSDp4lTs;->f$1:J

    iget-wide v3, p0, Lcom/facebook/-$$Lambda$RequestProgress$mJ1BmTeY74bqiNqcd6VGSDp4lTs;->f$2:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/RequestProgress;->lambda$mJ1BmTeY74bqiNqcd6VGSDp4lTs(Lcom/facebook/GraphRequest$Callback;JJ)V

    return-void
.end method
