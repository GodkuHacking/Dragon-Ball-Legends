.class public final synthetic Lcom/facebook/internal/WorkQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/facebook/internal/WorkQueue$WorkNode;

.field public final synthetic f$1:Lcom/facebook/internal/WorkQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/WorkQueue$WorkNode;Lcom/facebook/internal/WorkQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/WorkQueue$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/internal/WorkQueue$WorkNode;

    iput-object p2, p0, Lcom/facebook/internal/WorkQueue$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/internal/WorkQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/internal/WorkQueue$WorkNode;

    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/internal/WorkQueue;

    invoke-static {v0, v1}, Lcom/facebook/internal/WorkQueue;->$r8$lambda$_sCmQJywL5a5LTgwZM3UegDuEvU(Lcom/facebook/internal/WorkQueue$WorkNode;Lcom/facebook/internal/WorkQueue;)V

    return-void
.end method
