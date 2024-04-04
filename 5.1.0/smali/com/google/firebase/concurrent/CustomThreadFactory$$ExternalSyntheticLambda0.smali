.class public final synthetic Lcom/google/firebase/concurrent/CustomThreadFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/concurrent/CustomThreadFactory;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/concurrent/CustomThreadFactory;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/concurrent/CustomThreadFactory$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/concurrent/CustomThreadFactory;

    iput-object p2, p0, Lcom/google/firebase/concurrent/CustomThreadFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/concurrent/CustomThreadFactory$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/concurrent/CustomThreadFactory;

    iget-object v1, p0, Lcom/google/firebase/concurrent/CustomThreadFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/firebase/concurrent/CustomThreadFactory;->lambda$newThread$0$com-google-firebase-concurrent-CustomThreadFactory(Ljava/lang/Runnable;)V

    return-void
.end method
