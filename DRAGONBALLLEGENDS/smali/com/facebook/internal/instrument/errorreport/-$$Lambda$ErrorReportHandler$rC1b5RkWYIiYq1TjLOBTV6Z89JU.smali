.class public final synthetic Lcom/facebook/internal/instrument/errorreport/-$$Lambda$ErrorReportHandler$rC1b5RkWYIiYq1TjLOBTV6Z89JU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/instrument/errorreport/-$$Lambda$ErrorReportHandler$rC1b5RkWYIiYq1TjLOBTV6Z89JU;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/instrument/errorreport/-$$Lambda$ErrorReportHandler$rC1b5RkWYIiYq1TjLOBTV6Z89JU;->f$0:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;->lambda$rC1b5RkWYIiYq1TjLOBTV6Z89JU(Ljava/util/ArrayList;Lcom/facebook/GraphResponse;)V

    return-void
.end method
