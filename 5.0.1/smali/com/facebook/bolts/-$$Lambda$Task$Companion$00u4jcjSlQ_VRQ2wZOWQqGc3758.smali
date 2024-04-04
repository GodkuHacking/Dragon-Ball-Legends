.class public final synthetic Lcom/facebook/bolts/-$$Lambda$Task$Companion$00u4jcjSlQ_VRQ2wZOWQqGc3758;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/facebook/bolts/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/bolts/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/bolts/-$$Lambda$Task$Companion$00u4jcjSlQ_VRQ2wZOWQqGc3758;->f$0:Lcom/facebook/bolts/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/bolts/-$$Lambda$Task$Companion$00u4jcjSlQ_VRQ2wZOWQqGc3758;->f$0:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-static {v0}, Lcom/facebook/bolts/Task$Companion;->lambda$00u4jcjSlQ_VRQ2wZOWQqGc3758(Lcom/facebook/bolts/TaskCompletionSource;)V

    return-void
.end method
