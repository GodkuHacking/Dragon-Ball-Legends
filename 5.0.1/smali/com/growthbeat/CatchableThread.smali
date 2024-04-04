.class public abstract Lcom/growthbeat/CatchableThread;
.super Ljava/lang/Thread;
.source "CatchableThread.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 7
    invoke-direct {p0}, Lcom/growthbeat/CatchableThread;->initializeUncaughtExceptionHandler()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 12
    invoke-direct {p0}, Lcom/growthbeat/CatchableThread;->initializeUncaughtExceptionHandler()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/growthbeat/CatchableThread;->initializeUncaughtExceptionHandler()V

    return-void
.end method

.method private initializeUncaughtExceptionHandler()V
    .locals 1

    .line 22
    new-instance v0, Lcom/growthbeat/CatchableThread$1;

    invoke-direct {v0, p0}, Lcom/growthbeat/CatchableThread$1;-><init>(Lcom/growthbeat/CatchableThread;)V

    invoke-virtual {p0, v0}, Lcom/growthbeat/CatchableThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method


# virtual methods
.method public abstract uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end method
