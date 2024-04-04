.class Lcom/growthbeat/CatchableThread$1;
.super Ljava/lang/Object;
.source "CatchableThread.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/CatchableThread;->initializeUncaughtExceptionHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthbeat/CatchableThread;


# direct methods
.method constructor <init>(Lcom/growthbeat/CatchableThread;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/growthbeat/CatchableThread$1;->this$0:Lcom/growthbeat/CatchableThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/growthbeat/CatchableThread$1;->this$0:Lcom/growthbeat/CatchableThread;

    invoke-virtual {v0, p1, p2}, Lcom/growthbeat/CatchableThread;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
